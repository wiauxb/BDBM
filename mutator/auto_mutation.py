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
    string_parser.add_argument("--text", action='store_true')
    string_parser.add_argument("-p", "--probability", help="Probability of mutation", default=1.0)
    string_parser.add_argument("-n", "--number", help="Number of mutations to generate", default=1)
    clean_parser = subparsers.add_parser("sleep")
    clean_parser = subparsers.add_parser("clean")
    clean_parser.add_argument("number_add", help="Number of calls to add", default=1)

    args = main_parser.parse_args()
 
    print(args)

    project = args.project_name

    if args.command == "strings":
        if args.kind == "split":
            split.split_strings(project, not args.text, int(args.probability), int(args.number))
        elif args.kind == "xor":
            xor.xor_strings(project, not args.text, int(args.probability), int(args.number))
        elif args.kind == "base64":
            raise NotImplementedError("Base64 not implemented yet")
    elif args.command == "sleep":
        sleeper.add_sleeps(project)
    elif args.command == "clean":
        code_adder.clone_recovered(project)
        lines_added = code_adder.insert_sys_calls(int(args.number_add), project)