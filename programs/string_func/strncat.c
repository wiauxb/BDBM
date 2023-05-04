#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am evil";
    char string2[] = ", very evil !!\n";

    strncat(string1, string2, 7);
    printf("%s", string1);

    return 0;
}