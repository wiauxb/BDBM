#include <iostream>
#include "mutator.hpp"

int main(int argc, char const *argv[])
{
    init_modu("/BDBM/all_the_things/binrec_module/s2e", "hello");
    close_modu();
    return 0;
}
