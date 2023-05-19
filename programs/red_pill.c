#include <stdio.h>

int swallow_redpill () {
unsigned char m[2+4], rpill[] = "\x0f\x01\x0d\x00\x00\x00\x00\xc3";
*((unsigned*)&rpill[3]) = (unsigned)m;
((void(*)())&rpill)();
return (m[5]>0xd0) ? 1 : 0;
}

int main(int argc, char const *argv[])
{
    if (swallow_redpill())
        printf("Escape the Matrix, Neo\n");
    else
        printf("You are a normal user\n");
    return 0;
}
