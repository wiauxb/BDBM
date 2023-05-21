
// (c)m1lkweed 2021-2022 GPLv3+

#ifndef VMD_H_
#define VMD_H_

#include <stdlib.h>
#include <stdbool.h>

bool vmd_vmdetect(void);
bool vmd_hvdetect(void);
bool vmd_dbgpresent(void);
bool vmd_inchroot(void);
bool vmd_hardwaresus(void);
bool vmd_incontainer(void);

#ifdef VMD_IMPLEMENTATION

#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdint.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <sys/ptrace.h>
#include <sys/statvfs.h>
#include <sys/sysinfo.h>
#include <linux/limits.h>

#include "syscall.h"

/*cpuid takes 200 times longer in VMs while x87 insns are roughly the same*/
//may fail to detect fully virtualized machines, need a second test
bool vmd_vmdetect(void){
	unsigned long long t0, t1;
	unsigned junk = 0;
	unsigned char jarr[10] = {0};
	double fjunk = 0;
	volatile struct{
		int64_t base;
		int16_t offset;
	} a[2] = {0};
	asm("sgdt %0":"=m"(a[0])::);
	asm("sidt %0":"=m"(a[1])::);
	if(((a[0].offset == 0) || (a[0].base > 0)) || ((a[1].offset == 0) || (a[1].base > 0)))
		return true;
	/*small address filter so valgrind doesn't reach the SIGILL*/
	if(&t0 < (unsigned long long*)0x7ff000000000)
		return true;
	t0 = __builtin_ia32_rdtscp(&junk);
	__asm volatile("cpuid"
	              :"=a" (junk),
	               "=b" (junk),
	               "=c" (junk),
	               "=d" (junk)
	);
	t1 = __builtin_ia32_rdtscp(&junk);
	unsigned long long cpuid_time = t1 - t0;
	t0 = __builtin_ia32_rdtscp(&junk);
	__asm volatile("fbstp %0"
	              :"=m" (jarr)
	              :"t" (fjunk)
	              :"st"
	);
	t1 = __builtin_ia32_rdtscp(&junk);
	unsigned long long fbstp_time = t1 - t0;
	return (fbstp_time >= cpuid_time) || (cpuid_time > 2000);
}

/*detects hypervisors via cpuid*/
bool vmd_hvdetect(void){
	unsigned junk = 0, hypervisor = 0;
	__asm volatile("cpuid"
	              :"=a" (junk),
	               "=b" (junk),
	               "=c" (hypervisor),
	               "=d" (junk)
	              :"0"  (1),
	               "1"  (0),
	               "2"  (0)
	);
	return hypervisor & 0x80000000;
}

// / should have an inode of 2 if not chrooted, not foolproof
// but doesn't require root or checking for default strings
bool vmd_inchroot(void){
	struct stat a;
	char *dir = "/";
	syscall(SYS_stat, (size_t)dir, (size_t)&a);
	//TODO: only check for inode of 256 on btrfs
	return !((a.st_ino == 2) || (a.st_ino == 256));
}

