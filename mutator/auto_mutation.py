from .sleeper import sleeper
from .strings import split, xor
import argparse
from .adder import code_adder,cleanware_adder



if __name__ == "__main__": #FIXME think about ordering the mutations

    main_parser = argparse.ArgumentParser()
    main_parser.add_argument("project_name")
    subparsers = main_parser.add_subparsers(help="Operation", dest='command')
    string_parser = subparsers.add_parser("strings")
    string_parser.add_argument("kind", choices=["split", "xor", "base64"])
    string_parser.add_argument("--rodata", action='store_true')
    string_parser.add_argument("-p", "--probability", help="Probability of mutation", default=1.0)
    string_parser.add_argument("-n", "--number", help="Number of mutations to generate", default=1)
    clean_parser = subparsers.add_parser("sleep")
    clean_parser = subparsers.add_parser("clean_adder")
    clean_parser.add_argument("number_add", help="Number of calls to add", default=1)
    sys_parser = subparsers.add_parser("sys_adder")
    sys_parser.add_argument("number_add", help="Number of calls to add", default=1)

    args = main_parser.parse_args()
 
    print(args)

    project = args.project_name

    if args.command == "strings":
        if args.kind == "split":
            split.split_strings(project, args.rodata, int(args.probability), int(args.number))
        elif args.kind == "xor":
            xor.xor_strings(project, args.rodata, int(args.probability), int(args.number))
        elif args.kind == "base64":
            pass
    elif args.command == "sleep":
        sleeper.add_sleeps(project)
    elif args.command == "clean_adder":
        code_adder.clone_recovered(project)
        cleanware_adder.clean_loop(int(args.number_add), project)
        pass
    elif args.command == "sys_adder":
        code_adder.clone_recovered(project)
        lines_added = code_adder.insert_sys_calls(int(args.number_add), project)
