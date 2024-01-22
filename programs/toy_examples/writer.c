#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{
    if (argc < 2){
        printf("Usage: %s <your text>\n", argv[0]);
        return -1;
    }
    int len = strlen(argv[1]);
    FILE *f = fopen("writer.txt", "w");
    fwrite(argv[1], sizeof(char), len, f);
    fclose(f);
    return 0;
}
