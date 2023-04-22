import os
import shlex
import subprocess
import sys
from dataclasses import dataclass, field
from pathlib import Path
from tempfile import mkstemp
from typing import Dict, Optional, Tuple, Union

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
# app.jinja_env.add_extension("jinja_markdown.MarkdownExtension")


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


@app.route("/projects/<project>/add-trace", methods=["GET", "POST"])
def add_trace(project: str):
    campaign = load_campaign(project)
    if request.method == "POST":
        try:
            trace_params = _validate_trace_params(
                request.form["trace_name"],
                request.form["trace_args"],
                request.form["trace_symbolic_args"],
                request.form["trace_stdin"],
            )
        except ValueError as err:
            return render_template(
                "add-trace.html",
                project=project,
                campaign=campaign,
                trace_name=request.form["trace_name"],
                trace_args=request.form["trace_args"],
                trace_symbolic_args=request.form["trace_symbolic_args"],
                trace_stdin=request.form["trace_stdin"],
                error=str(err),
            )

        campaign.traces.append(trace_params)
        campaign.save()

        return redirect(url_for("project_details", project=project))

    return render_template(
        "add-trace.html", project=project, trace_name="", trace_args="", trace_stdin=""
    )


@app.post("/projects/<project>/remove-trace/<int:trace_id>")
def remove_trace(project: str, trace_id: int):
    campaign = load_campaign(project)
    try:
        campaign.remove_trace(trace_id)
    except IndexError:
        abort(404)

    campaign.save()
    return redirect(url_for("project_details", project=project))


@app.post("/projects/<project>/clear-trace-data")
def clear_trace_data(project: str):
    if not campaign_filename(project).is_file():
        abort(404)

    clear_project_trace_data(project)
    return redirect(url_for("project_details", project=project))


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

    return redirect(url_for("project_details", project=project))


@app.get("/projects/<project>/web_worker.log")
def download_worker_log(project: str):
    log = worker_log_filename(project)
    if not log.is_file():
        abort(404)

    return send_file(log)

def _validate_input_file(
    source: str, destination: str, permissions: str
) -> TraceInputFile:
    src = Path(source).absolute()
    if not src.is_file():
        raise ValueError(f"source file does not exist: {src}")

    perms: Union[str, bool] = permissions
    dest = Path(destination) if destination else None
    if permissions:
        perms = permissions
        try:
            _validate_file_permission(permissions)
        except ValueError as err:
            raise ValueError(f"invalid file permissions: {err}")
    else:
        perms = True

    return TraceInputFile(src, dest, perms)


@app.route(
    "/project/<project>/traces/<int:trace_id>/add-input-file", methods=["GET", "POST"]
)
def add_input_file(project: str, trace_id: int):
    campaign = load_campaign(project)
    try:
        trace = campaign.get_trace(trace_id)
    except IndexError:
        abort(404)

    trace_name = trace.name or str(trace_id)

    if request.method == "POST":
        try:
            input_file = _validate_input_file(
                request.form["source"],
                request.form["destination"],
                request.form["permissions"],
            )
        except ValueError as err:
            return render_template(
                "add-trace-input-file.html",
                project=project,
                trace=trace,
                trace_name=trace_name,
                source=request.form["source"],
                destination=request.form["destination"],
                permissions=request.form["permissions"],
                error=err,
            )

        trace.input_files.append(input_file)
        campaign.save()
        return redirect(url_for("project_details", project=project))

    return render_template(
        "add-trace-input-file.html", project=project, trace=trace, trace_name=trace_name
    )


@app.post(
    "/project/<project>/traces/<int:trace_id>/remove-input-file/<int:input_file_id>"
)
def remove_input_file(project: str, trace_id: int, input_file_id: int):
    campaign = load_campaign(project)
    try:
        trace = campaign.get_trace(trace_id)
    except IndexError:
        abort(404)

    try:
        trace.input_files.pop(input_file_id)
    except IndexError:
        abort(404)

    campaign.save()
    return redirect(url_for("project_details", project=project))
