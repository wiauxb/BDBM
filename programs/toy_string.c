#include <stdio.h>

void evil_function(){
    printf("I am evil!!!\n");
}

int main(int argc, char const *argv[])
{
    evil_function();
    return 0;
}
