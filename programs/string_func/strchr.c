#include <stdio.h>
#include <string.h>

int main() {
    char * string2 = strchr("I am evil!!!\n", 'v');

    printf("%s", string2);

    return 0;
}