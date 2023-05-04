#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am evil";
    char string2[] = ", very evil !!\n";

    strcat(string1, string2);
    printf("%s", string1);

    return 0;
}