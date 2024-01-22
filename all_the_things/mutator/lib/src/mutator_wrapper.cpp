#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include "mutator.hpp"

PYBIND11_MODULE(mutator, m){
    m.doc() = "toy example of a python lib";
    m.def("run", &run, "Run the core of the package");
    m.def("find_maybe_string_addresses", &find_maybe_string_addresses, "Find all possible addresses of stored strings.");
    m.def("init_module", &init_modu, "Init the mutation module");
    m.def("close_module", &close_modu, "Close the mutation module");
}