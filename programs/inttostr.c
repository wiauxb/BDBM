#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char const *argv[])
{
    if (argc < 2){
        printf("Please enter a number\n");
        return -1;
    }
    int32_t number = atoi(argv[1]);
    char texte[33];
    strncpy(texte, number, 32);
    texte[32] = "\0";
    // char *texte = (void *)&number;
    printf("%s\n", texte);
    return 0;
}
