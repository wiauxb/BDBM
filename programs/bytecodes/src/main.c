#include <stdio.h>


int main(int argc, char *argv[])
{
  printf("%s\n", base64_decode("SGVsbG8gR3V5cw="));
  return 0;
}