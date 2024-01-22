#include <unistd.h>
#include <stdio.h>

#define _DBG_WAIT do{\
    char* a;\
    cin >> a;\
}while(false);
#define _DBG_PRINT_PID do{\
   printf("PID: %ld\n", getpid()) ;\
} while (false);
#define DBG_HOOK do{\
    _DBG_PRINT_PID\
    _DBG_WAIT\
} while(false);