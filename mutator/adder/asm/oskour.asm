.data
value:
	.long 2

.text
	.globl _start

_start:
	movl $6, %eax                         ; eax ≔ 6
	                                      ;  └───────┐
	movw %eax, value                      ; value ≔ eax
	                                      ;   └───────────┐
	movl $0, %ebx                         ; ebx ≔ 0  │    │
	                                      ;       ┌──┘    │
	movb %al, %bl                         ; bl ≔ al       │
	                                      ; %ebx is now 6 │
	                                      ;         ┌─────┘
	movl value, %ebx                      ; ebx ≔ value
	
	movl $value, %esi                     ; esi ≔ @value
	; %esi is now the address of value
	
	xorl %ebx, %ebx                       ; ebx ≔ ebx ⊻ ebx
	                                      ; %ebx is now 0
	
	movw value(, %ebx, 1), %bx            ; bx ≔ value[ebx*1]
	                                      ; %ebx is now 6
	
; Linux sys_exit
	movl $1, %eax                         ; eax ≔ 1
	xorl %ebx, %ebx                       ; ebx ≔ 0
	int $0x80