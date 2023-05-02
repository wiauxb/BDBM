#include <unistd.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
    char* arr[] = {"pwd", NULL};
    int out = execv("/bin/pwd", arr);
    printf("%d\n", out);
    return 0;
}
