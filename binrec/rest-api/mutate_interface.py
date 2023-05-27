from subprocess import check_output
from mutator.mutation_generation import mutation_selection

def mutate(project, *args):
    output = check_output(["just", "mutate", project, *args])
    return output.decode("utf-8")

def gen_mutate(project, num_mutations):
    mutation_selection(project, int(num_mutations))