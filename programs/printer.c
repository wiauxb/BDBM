#include <stdio.h>
#include <string.h>

int main(int argc, char** argv){
	printf("Bonjour à tous je suis ");
    if(!strcmp(argv[1],"1")){
        printf("countent !\n");
    } else {
		printf("triste :(\n");
	}
	return 0;
}
