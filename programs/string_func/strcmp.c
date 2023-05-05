#include <stdio.h>
#include <string.h>

int main() {


    int result = strcmp("I am evil!!!\n", "I AM eVil!!!\n");
    printf("%d\n", result);

    return 0;
}