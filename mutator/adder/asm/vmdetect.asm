section .text
    global _start

_start:
    mov     eax, 564D5868h                      /* magic number     */
    mov 	ebx, 0
    mov 	cx,  0Ah
    mov 	dx,  5658h                          /* VMware I/O Port  */
    in      eax, dx
    cmp 	ebx, 564D5868h                      /* VMware Running ? */
    jeq     _escape
    mov     edx, len
    mov     ecx, msg
    mov    	ebx, 1
    mov    	eax, 4
    int     0x80

_escape:                                    /* Exit */
    mov     eax, 1
    mov     ebx, 0
    int     0x80

section .data

    msg db 'Hello ASM World !', 0xa
    len equ $ - msg