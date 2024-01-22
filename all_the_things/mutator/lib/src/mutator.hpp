#ifndef _MUTATOR_HPP
#define _MUTATOR_HPP

#ifdef _MSC_VER
    #define EXPORT_SYMBOL __declspec(dllexport)
#else
    #define EXPORT_SYMBOL
#endif

#include <list>

#ifdef __cplusplus
extern "C" {
#endif

EXPORT_SYMBOL int run();
EXPORT_SYMBOL void init_modu(std::string, std::string);
EXPORT_SYMBOL std::list<int> find_maybe_string_addresses();
EXPORT_SYMBOL int replace_fwrite(std::string, std::string);
EXPORT_SYMBOL void close_modu();

#ifdef __cplusplus
}
#endif

#endif 