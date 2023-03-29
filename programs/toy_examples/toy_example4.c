#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>  
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>


void print_func(){
    char *hello = "Hello World";
	char *bye = "Bye Bye";
    return;
}

void print_file(){
    FILE *fp;
    fp = fopen("text_file3§.txt", "r+");
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

    char add_text[] = "I altered the file!";

    fwrite(add_text, sizeof(char), sizeof(add_text), fp);

    fclose(fp);
    free(buffer);


    return;
}

//source : https://gist.github.com/browny/5211329
void socket_func(){
    int listen = 0; 
    struct sockaddr_in serv_addr;

    listen = socket(AF_INET, SOCK_STREAM, 0);

    memset(&serv_addr, '0', sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
	serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	serv_addr.sin_port = htons(5000);

    bind(listen, (struct sockaddr*)&serv_addr, sizeof(serv_addr));

    close(listen);
    return;
}

int main(int argc, char **argv){
    print_func();
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


