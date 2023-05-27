from subprocess import check_output

def mutate(project, *args):
    output = check_output(["just", "mutate", project, *args])
    return output.decode("utf-8")