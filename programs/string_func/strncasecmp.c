#include <stdio.h>
#include <string.h>

int main() {
    
    char* string1 = "I am evil!!!\n";
    char* string2 = "I am eVil?!!\n";

    int result = strncasecmp(string1, string2, 5);
    printf("%d\n", result);

    result = strncasecmp(string1, string2, 10);
    printf("%d\n", result);

    return 0;
}