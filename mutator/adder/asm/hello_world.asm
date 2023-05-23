section .text
	global main

main:
    mov     eax, 564D5868h
    mov     ebx, 0
    mov     ecx, 0
    mov     cx, 0Ah
    mov     edx, 0
    mov     dx, 5658h
    in      eax, dx             ; ici c'est la merde
    cmp     ebx, 564D5868h
    je     _escape
	mov     edx, len
	mov     ecx, msg
	mov     ebx, 1
	mov     eax, 4
	int     0x80
_escape:
	mov     eax, 1
	int     0x80

section .data

	msg db 'Hello ASM World !', 0xa
	len equ $ - msg