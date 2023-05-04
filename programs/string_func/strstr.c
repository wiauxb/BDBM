#include <stdio.h>
#include <string.h>

int main() {
    
    char string1[] = "I am very evil!! \n";

    printf("%s", strstr(string1, "very"));

    return 0;
}