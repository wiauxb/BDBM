#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am evil!!!\n";
    char * string2 = strchr(string1, 'v');

    printf("%s", string2);

    return 0;
}