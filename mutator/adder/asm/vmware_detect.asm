pushl %edx
pushl %ecx
pushl %ebx
pushl %eax
movl $0x564D5868, %eax
movl 0, %ebx
movw $0x304168, %cx
movw $0x5658, %dx
inl  %dx, %eax
jne _proceed
movl $0, %ebx
movl $1, %eax
int 0x80
_proceed:
popl %eax
popl %ebx
popl %ecx
popl %edx