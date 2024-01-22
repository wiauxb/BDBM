cmake_minimum_required(VERSION 3.12)
project(Mutator)
set(CMAKE_CXX_STANDARD 17)

include($ENV{S2E_PREFIX}/lib/cmake/llvm/LLVMConfig.cmake)

add_executable(main_mutator src/mutator.cpp src/main.cpp src/mutator.hpp)
target_compile_definitions(main_mutator PUBLIC ${LLVM_DEFINITIONS})
target_compile_options(main_mutator PUBLIC -fno-rtti -fpic)
target_include_directories(main_mutator PUBLIC ${LLVM_INCLUDE_DIRS} ${CMAKE_CURRENT_LIST_DIR}/src)
llvm_map_components_to_libnames(llvm_libs CodeGen Core ipo IRReader Passes ScalarOpts Support TransformUtils)

target_link_libraries(main_mutator PUBLIC ${llvm_libs})

# add_compile_options(-Wall -pedantic -Wno-comment)
add_library(mutator SHARED src/mutator.cpp)
target_compile_definitions(mutator PUBLIC ${LLVM_DEFINITIONS})
target_compile_options(mutator PUBLIC -fno-rtti -fpic)
target_include_directories(mutator PUBLIC ${LLVM_INCLUDE_DIRS} ${CMAKE_CURRENT_LIST_DIR}/src)
llvm_map_components_to_libnames(llvm_libs CodeGen Core ipo IRReader Passes ScalarOpts Support TransformUtils)

target_link_libraries(mutator PUBLIC ${llvm_libs})
# find_package(Python COMPONENTS Interpreter Development)
# find_package(pybind11 REQUIRED)

# pybind11_add_module(mutator mutator_wrapper.cpp)