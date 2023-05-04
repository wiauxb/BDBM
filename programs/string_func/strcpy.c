#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am evil!!!\n";
    char string2[] = "I am nice!!!\n";

    strcpy(string1, string2);
    printf("%s\n", string1);

    return 0;
}