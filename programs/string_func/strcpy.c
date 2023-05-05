#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am evil!!!\n";

    strcpy(string1, "I am nice!!!\n");
    printf("%s\n", string1);

    return 0;
}