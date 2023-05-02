
#include <stdio.h>

int main(int argc, char const *argv[])
{
    char *text = "Hello there";
    char **ptr = &text;
    puts(*ptr);
    return 0;
}
