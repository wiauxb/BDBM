from . import sleeper, string_splitter
import argparse



if __name__ == "__main__": #FIXME think about ordering the mutations
    parser = argparse.ArgumentParser()
    parser.add_argument("project_name")
    parser.add_argument("--sleep", action='store_true')
    parser.add_argument("--string", action='store_true')
    parser.add_argument("--xor", action='store_true')

    args = parser.parse_args()

    project = args.project_name

    if args.sleep:
        sleeper.add_sleeps(project)

    if args.string:
       string_splitter.split_strings(project)

    if args.xor:
       string_splitter.xor_strings(project)