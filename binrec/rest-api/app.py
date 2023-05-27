import os
import shlex
import subprocess
import sys
from dataclasses import dataclass, field
from pathlib import Path
from tempfile import mkstemp
from typing import Dict, Optional, Tuple, Union
from .mutate_interface import mutate, gen_mutate

from flask import (
    Flask,
    abort,
    g,
    redirect,
    render_template,
    request,
    send_file,
    url_for,
    jsonify,
)

from werkzeug.utils import secure_filename

from binrec import __version__ as BINREC_VERSION
from binrec.campaign import (
    Campaign,
    TraceInputFile,
    TraceParams,
    _validate_file_permission,
)
from binrec.env import (
    BINREC_PROJECTS,
    BINREC_ROOT,
    campaign_filename,
    get_trace_dirs,
    merged_trace_dir,
    project_dir,
    recovered_binary_filename,
)
from binrec.project import clear_project_trace_data, new_project

UPLOAD_DIRECTORY = Path(__file__).parent / "uploads"

app = Flask(__name__)
app.config["UPLOAD_FOLDER"] = str(UPLOAD_DIRECTORY.absolute())
app.jinja_env.add_extension("jinja_markdown.MarkdownExtension")


@dataclass
class AppState:
    running_project: Optional[Tuple[str, subprocess.Popen]] = None
    lift_results: Dict[str, int] = field(default_factory=dict)

    def is_worker_running(self) -> bool:
        return self.running_project is not None

    def is_project_running(self, project: str) -> bool:
        return self.running_project[0] == project if self.running_project else False

    def poll(self) -> None:
        if self.running_project:
            project, worker = self.running_project
            rc = worker.poll()
            if rc is not None:
                self.lift_results[project] = rc
                self.running_project = None

    def set_running_project(self, project: str, worker: subprocess.Popen) -> None:
        self.running_project = (project, worker)
        self.lift_results.pop(project, None)


STATE = AppState()


def setup_api():
    if not UPLOAD_DIRECTORY.is_dir():
        UPLOAD_DIRECTORY.mkdir()


@app.before_request
def before_request():
    g.state = STATE
    g.state.poll()
    g.binrec_version = BINREC_VERSION


def worker_log_filename(project: str) -> Path:
    return project_dir(project) / "web_worker.log"


def load_campaign(project: str):
    filename = campaign_filename(project)
    if not filename.is_file():
        abort(404)

    try:
        campaign = Campaign.load_project(project)
    except:  # noqa: E722
        app.logger.exception("failed to load campaign for project %s", project)
        abort(404)

    return campaign

def _validate_trace_params(
    name: str, command_line: str, symbolic_arg_indicies: str, stdin: str
) -> TraceParams:
    try:
        args = shlex.split(command_line)
    except ValueError as error:
        raise ValueError(f"Invalid command line arguments: {error}")

    try:
        symbolic_args = [int(i) for i in symbolic_arg_indicies.split()]
    except ValueError as error:
        raise ValueError(f"Invalid symbolic argument indices: {error}")

    try:
        trace_args = TraceParams.create_trace_args(args, symbolic_args)
    except IndexError as error:
        raise ValueError(f"Invalid symbolic argument indices: {error}")

    return TraceParams(name=name, args=trace_args, stdin=stdin)


@app.route("/add-project", methods=["POST"])
def add_project():
    if request.is_json:
        req = request.get_json()
        project = req["project"]

        path = Path(req["path"])
        # try:
        #     original_filename, binary = _save_uploaded_file()
        # except Exception as error:
        #     return {"error": error}, 415

        # if not project:
        #     project = original_filename

        if (BINREC_PROJECTS / project).is_dir():
            return {"error": f"project already exists: {project}"}, 400

        new_project(project, path)
        return {"status": True}, 200
    return {"error": "Request must be JSON"}, 415


@app.route("/projects/<project>/add-trace", methods=["POST"])
def add_trace(project: str):
    campaign = load_campaign(project)
    if request.is_json:
        req = request.get_json()
        try:
            trace_params = _validate_trace_params(
                req["trace_name"],
                req["trace_args"],
                req["trace_symbolic_args"],
                req["trace_stdin"],
            )
        except ValueError as err:
            return {"error": str(err)}, 400

        campaign.traces.append(trace_params)
        campaign.save()

        return {"status": "success"}, 200

    return {"error": "Request must be JSON"}, 415

# def _save_uploaded_file() -> Tuple[str, Path]:
#     if "binary_filename" not in request.files:
#         raise ValueError("You must provide a binary filename1")

#     file = request.files["binary_filename"]
#     if not file.filename:
#         raise ValueError("You must provide a binary filename2")

#     fd, filename = mkstemp(
#         dir=UPLOAD_DIRECTORY, prefix=f"{secure_filename(file.filename)}."
#     )
#     os.close(fd)

#     app.logger.info("saving uploaded file %s -> %s", file.filename, filename)
#     file.save(filename)

#     return file.filename, Path(filename)

@app.post("/projects/<project>/recover")
def start_recover_project(project: str):
    if g.state.is_worker_running():
        abort(503, "worker process is already running")

    _ = load_campaign(project)  # make sure the project/campaign exists and is valid
    log = open(worker_log_filename(project), "w")
    worker = subprocess.Popen(
        [sys.executable, "-m", "binrec.web.worker", "--verbose", "recover", project],
        stdout=log,
        stderr=log,
    )
    g.state.set_running_project(project, worker)

    return {"status": "success"}, 200

@app.post("/projects/<project>/mutate")
def start_mutate_project(project: str):
    
    _ = load_campaign(project)  # make sure the project/campaign exists and is valid
    if request.is_json:
        req = request.get_json()
        print(mutate(project, req["args"]))
    else:
        return {"status": "error"}, 415

    return {"status": "success"}, 200


@app.get("/projects/<project>/mutations/<num_mutations>")
def get_mutations_for_project(project: str, num_mutations: int):
    
    _ = load_campaign(project)  # make sure the project/campaign exists and is valid
    try:
        gen_mutate(project, num_mutations)
    except Exception as error:
        return {"error": str(error)}, 415
    return {"status": "success"}, 200