#include <stdio.h>
#include <string.h>

int main() {
    //J'alloue plus de mémoire sinon problèmes
    char string1[30] = "I am evil";
    char string2[40] = "This overwrites string1\n";

    strncpy(string1, string2, 10);
    printf("%s\n", string1);

    return 0;
}