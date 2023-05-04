#include <stdio.h>
#include <string.h>

int main(){
    char * sent = "I am evil!!!\n";
    printf("%s", sent);
    print("%d", strnlen(sent, 5));

    return 0;
}