#include <sys/ptrace.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
    int a = ptrace(PTRACE_TRACEME, 0, NULL, 0);
    return a;
}


// int main(int argc, char const *argv[])
// {
//     if (getenv("DEBUG"))
//         printf("Debugging is enabled\n");
//     else
//         printf("Debugging is not enabled\n");
//     return 0;
// }