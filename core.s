	.macro print_message message, len
	movq $1, %rax	/*sys_write*/
	movq $1, %rdi	/*standard output*/
	leaq \message(%rip), %rsi	/*string address*/
	movq \len, %rdx	/*string length*/
	syscall
	.endm

	.macro exit_syscall
	movq $60, %rax
	xorq %rdi, %rdi
	syscall
	.endm
	
	.macro NEXT
	lodsq /*loads address from rsi at rax and shifts rsi by 8*/
	jmp *(%rax) /*hops to address stored at address rax points*/
	.endm

	.macro atom label, size, parent, precision, type_name
	.global \label
	.balign 8
\label\():
	.quad \size /*This is the size of the descriptor itself*/
	.quad \parent
	.quad \presicion
	.ascii "\type_name"
	.balign 8
	.endm

	.macro amorph label, size, 

	.macro product label, size, quotient_type, type_name
	.global \label
	.balign 8
\label\():
	.quad \size /*This is the size of the descriptor itself*/
	.quad \quotient_type
	.ascii "\type_name"
	.balign 8
	.endm

	.macro symbol label, size, place, mutable, home, pointed_type
	.global \label
	.balign 8
\label\():
	.quad \size /*This is the size of the symbol itself*/
	.quad \pointed_type
	.quad \place
	.quad \home
	.char \mutable
	.ascii "\label"
	.balign 8
	.endm
	
	.section .rodata

welcome_message:
	.ascii "Hi, Anon!. This is the Eccentric-Winter compiler.\nA "
	.ascii "compiler for the Eccentric programming language.\nI "
	.ascii "hope that you find this system interesting and "
	.ascii "someday useful.\nThe Eccentric-Winter compiler is "
	.ascii "free software under the GPL 3 licence.\nEnjoy! UwUr."
	.ascii "\nEccentric\n       	__\n      ¨¨)°\\\n     ./~~\\"
	.ascii "\\~~\\.\n     _///||\\\\\\_\n    //¨¨/¨/¨¨¨\\\\\n    "
	.ascii "---(`(`----- ::WVJ\nHacking with me, anon?.\n\n\n\n"
welcome_message_length =	. - welcome_message

prompt_signal:
	.ascii "UwUr->"
prompt_signal_length =	. - prompt_signal
	
	atom tibit, 0x1E, libit, 0x09, "tibit"
	atom libit, 0x1E, cobit, 0x0A, "libit"
	atom cobit, 0x1E, bibit, 0x0C, "cobit"
	atom bibit, 0x1E, hubit, 0x10, "bibit"
	atom hubit, 0x1E, hubit, 0x18, "hubit"

	atom cons, 0x1D, hubit, 0x18, "cons"
	atom pair, 0x1D, hubit, 0x18, "pair"

	atom char, 0x1D, tibit, 0x09, "char"

	atom bool, 0x1D, tibit, 0x09, "bool"
	
	atom tinat, 0x1E, tibit, 0x09, "tinat"
	atom linat, 0x1E, libit, 0x0A, "linat"
	atom conat, 0x1E, cobit, 0x0C, "conat"
	atom binat, 0x1E, bibit, 0x10, "binat"
	atom hunat, 0x1E, hubit, 0x18, "hunat"

	atom tinint, 0x1F, tibit, 0x09, "tinint"
	atom litint, 0x1F, libit, 0x0A, "litint"
	atom comint, 0x1F, cobit, 0x0C, "comint"
	atom bigint, 0x1F, bibit, 0x10, "bigint"
	atom hugint, 0x1F, hubit, 0x18, "hugint"

	product string, 0x1f, char, "string"

	.equ cons_desc, 0
	.equ cons_car, 8	
	.equ cons_cdr, 16
	.equ cons_cdr, 24

nil:
	.balign 8
	.quad cons
	.quad nil
	.quad nil
	.balign 8

yep:
	.balign 8
	.quad bool
	.byte 0xff
	.balign 8

nop:
	.balign 8
	.quad bool
	.byte 0x00
	.balign 8

input_buffer_length:
	.quad 0x1000000000000
	
system_size:
	.balign 8
	.quad binat
	.quad 0xffffffffffffffff
	.balign

	.section .bss
	.lcomm input_buffer, 4096

	.section .text
	.globl _start
_start:
	cld	/*Just clearing the direction flag*/
	print_message welcome_message, $welcome_message_length
	print_message prompt_signal, $prompt_signal_length
	xorq %rax, %rax
	xorq %rdi, %rdi
	leaq input_buffer(%rip), %rsi
	movq $input_buffer_length, %rdx
	syscall
	exit_syscall
