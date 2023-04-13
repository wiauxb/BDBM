#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>  
#include <stdio.h>

void print_func(){
    char *hello = "Hello World";
    char *bye = "Bye Bye";
    return;
}

void print_file(){
    FILE *fp;
    fp = fopen("text_file1.txt", "r");
    if( fp == NULL ) {
    fprintf(stderr, "Couldn't open:\n");
    exit(1);
}
    fseek(fp, 0L, SEEK_END);
    long sz = ftell(fp);

    rewind(fp);
    char* buffer = (char*) malloc((size_t) sz);
    fread(buffer, sizeof *buffer, (size_t) sz, fp);
    
    printf("%s", buffer);

    fclose(fp);
    free(buffer);
    return;
}

int main(int argc, char **argv){
    print_func();

    print_file();

    return 0;
}


