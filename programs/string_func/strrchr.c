#include <stdio.h>
#include <string.h>

int main() {
    //last instance of the letter
    char string1[] = "I am evil, very!!!\n";
    char * string2 = strrchr(string1, 'v');

    printf("%s", string2);

    return 0;
}