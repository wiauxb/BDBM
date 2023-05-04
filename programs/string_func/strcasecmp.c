#include <stdio.h>
#include <string.h>

int main() {
    
    char* string1 = "I am evil!!!\n";
    char* string2 = "I AM eVil!!!\n";

    int result = strcasecmp(string1, string2);
    printf("%d\n", result);

    return 0;
}