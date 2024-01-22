from ..lib.mutator import fwrite_replace as c_fwrite_replace
from ..helpers.utils import s2e_dir


def replace_fwrite(project):
    recovered_path = s2e_dir + "/projects/" + project + "/s2e-out/recovered.bc"
    ll_path = s2e_dir + "/projects/" + project + "/s2e-out/recovered.ll"
    return c_fwrite_replace(recovered_path, ll_path)


