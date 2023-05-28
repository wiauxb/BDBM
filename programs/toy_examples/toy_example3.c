#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>  
#include <stdio.h>
#include <sys/socket.h>

void print_func(){
    char *hello = "I am evil!!!\n";
	char *bye = "Bye Bye\n";
    printf("%s", hello);
    return;
}

void print_file(){
    FILE *fp;
    fp = fopen("text_file3.txt", "w+");
    if( fp == NULL ) {
    fprintf(stderr, "Couldn't open:\n");
    exit(1);
}
    char add_text[] = "I altered the file!";

    fwrite(add_text, sizeof(char), sizeof(add_text), fp);

    fclose(fp);
    
    return;
}

void socket_func(){
    int listen = 0; 
    listen = socket(AF_INET, SOCK_STREAM, 0);

    close(listen);
    return;
}

int main(int argc, char **argv){
    if(!strcmp(argv[1],"1")){
        print_func();
    }
    else if (!strcmp(argv[1],"2"))
    {
        print_file();
    }
    else if (!strcmp(argv[1],"3"))
    {
        socket_func();
    }
    
	return 0;
}


