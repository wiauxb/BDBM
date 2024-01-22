
default:
  @just --list --unsorted

# Environment Variables (Include in all justfiles that need them)
set dotenv-load := true

justdir := justfile_directory()
binrec_path := env_var('BINREC_ROOT')
mutator_path := env_var('MUTATOR_ROOT')

# =========================================

binrec *args:
    cd "{{binrec_path}}"; just {{args}}

init-bdbm-addon:
  test -f Pipfile.lock || pipenv lock --dev
  pipenv sync --dev
  # ./init_project.sh

# [Memoire] recompile recovered.ll to custom_recovered.
recompile project *flags:
  llvm-as-14 "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/recovered.ll"
  # clang-14 -O0 -g -c -emit-llvm -target i386 s2e/projects/string/s2e-out/recovered.ll -o s2e/projects/string/s2e-out/recovered.bc
  pipenv run python -m all_the_things.mutator.compile_recovered  "{{project}}" {{flags}}

# [Memoire] recompile recovered.ll to custom_recovered and link files to it.
link_recompile project *files:
  llvm-as-14 "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/recovered.ll" -o "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/recovered_to_link.bc"
  llvm-link-14 "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/recovered_to_link.bc" {{files}} -o "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/recovered.bc"
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
  "{{binrec_path}}/s2e/projects/{{project}}/s2e-out/custom_recovered" {{args}}

# [Memoire] Generate number mutants of project
get-mutants project number:
    pipenv run python -m all_the_things.mutator.mutation_generation {{project}} {{number}}

# ================================
# Python binding commands
# ================================

compile-lib:
  mkdir -p "{{mutator_path}}/lib/build"
  cd "{{mutator_path}}/lib/build" && cmake .. -DCMAKE_BUILD_TYPE=Debug && make -j4

build-lib:
  @just compile-lib
  cd "{{mutator_path}}/lib"; pipenv run "g++ -O3 -g -Wall -Werror -shared -std=c++11 -fPIC \
        `pipenv run python3 -m pybind11 --includes` \
        -I {{mutator_path}}/lib/src \
        "src/mutator_wrapper.cpp" \
        -o mutator`pipenv run python3.9-config --extension-suffix` \
        -L{{mutator_path}}/lib/build -lmutator -Wl,-rpath,{{mutator_path}}/lib/build"

apply-lib:
  @just build-lib 
  cd "{{mutator_path}}" && pipenv run python3 main.py

compile-bc file:
  llc-14 -filetype obj -o {{file}}.o {{file}}.bc
  gcc -m32 -no-pie -o {{file}} {{file}}.o