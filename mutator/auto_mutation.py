from .sleeper import sleeper
from .strings import split, xor
import argparse
from .adder import code_adder



if __name__ == "__main__": #FIXME think about ordering the mutations

    main_parser = argparse.ArgumentParser()
    main_parser.add_argument("project_name")
    subparsers = main_parser.add_subparsers(help="Operation", dest='command')
    string_parser = subparsers.add_parser("strings")
    string_parser.add_argument("kind", choices=["split", "xor", "base64"])
    string_parser.add_argument("--rodata", action='store_true')
    clean_parser = subparsers.add_parser("sleep")
    clean_parser = subparsers.add_parser("clean")
    clean_parser.add_argument("number_add")

    args = main_parser.parse_args()
 
    print(args)

    project = args.project_name

    if args.command == "strings":
        if args.kind == "split":
            split.split_strings(project, args.rodata)
        elif args.kind == "xor":
            xor.xor_strings(project, args.rodata)
        elif args.kind == "base64":
            pass
    elif args.command == "sleep":
        sleeper.add_sleeps(project)
    elif args.command == "clean":
        code_adder.clone_recovered(project)
        lines_added = code_adder.insert_sys_calls(int(args.number_add), project)
        pass