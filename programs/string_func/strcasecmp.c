#include <stdio.h>
#include <string.h>

int main() {

    int result = strcasecmp("I am evil!!!\n", "I AM eVil!!!\n");
    printf("%d\n", result);

    return 0;
}