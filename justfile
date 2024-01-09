
default:
  @just --list --unsorted

justdir := justfile_directory()

binrec *args:
    cd "{{justdir}}"/all_the_things/binrec_module; just {{args}}

init-bdbm-addon:
  test -f Pipfile.lock || pipenv lock --dev
  pipenv sync --dev
  # ./init_project.sh

# [Memoire] recompile recovered.ll to custom_recovered.
recompile project *flags:
  llvm-as-14 "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/recovered.ll"
  # clang-14 -O0 -g -c -emit-llvm -target i386 s2e/projects/string/s2e-out/recovered.ll -o s2e/projects/string/s2e-out/recovered.bc
  pipenv run python -m all_the_things.mutator.compile_recovered  "{{project}}" {{flags}}

# [Memoire] recompile recovered.ll to custom_recovered and link files to it.
link_recompile project *files:
  llvm-as-14 "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/recovered.ll" -o "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/recovered_to_link.bc"
  llvm-link-14 "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/recovered_to_link.bc" {{files}} -o "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/recovered.bc"
  # clang-14 -O0 -g -c -emit-llvm -target i386 s2e/projects/string/s2e-out/recovered.ll -o s2e/projects/string/s2e-out/recovered.bc
  pipenv run python -m all_the_things.mutator.compile_recovered  "{{project}}"

# [Memoire] Mutate a recovered project
mutate project *flags:
  pipenv run python -m all_the_things.mutator.auto_mutation "{{project}}" {{flags}}

# [Memoire] Mutate a project binary
full-mutate project *flags:
  @just binrec lift-trace {{project}}
  @just mutate {{project}} {{flags}}

# [Memoire] Test yara rules from programs/yara onto original binary and mutated one
yara project:
  "{{justdir}}/run_yara.sh" {{project}}

# [Memoire] Execute mutated binary of project
exec-mutated project *args:
  "all_the_things/binrec_module/s2e/projects/{{project}}/s2e-out/custom_recovered" {{args}}

# [Memoire] Generate number mutants of project
get-mutants project number:
    pipenv run python -m all_the_things.mutator.mutation_generation {{project}} {{number}}
