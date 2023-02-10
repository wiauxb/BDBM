#include <stdio.h>
#include <string.h>

void print_func(){
    char *hello = "Hello World";
	char *bye = "Bye Bye";
    printf("%s\n", hello);
}

int main(int argc, char **argv){
    print_func();
    if(!strcmp(argv[1],"1")){
        print_func();
    }
	return 0;
}


