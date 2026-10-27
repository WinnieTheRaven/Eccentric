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
	lodsq /*store the address from %rsi at %rax and increments %rsi by 8*/
	jmp *(%rax) /*gets to address stored at the address %rax points to*/
	.endm

	.macro atom_type_descriptor type_label, symbol_size, parent_type, byte_size, type_name
	.global \type_label
	.balign 8
\type_label\():
	.quad \symbol_size
	.quad \parent_type
	.quad \byte_size
	.ascii "\type_name"
	.balign 8
	.endm

	.macro product_descriptor type_label, symbol_size, quotient_type, type_name
	.global \type_label
	.balign 8
\type_label\():
	.quad \symbol_size
	.quad \quotient_type
	.ascii "\type_name"
	.balign 8
	.endm

	.macro symbol_descriptor symbol_label, symbol_size, var_start, writable
	.global \symbol_label
	.balign 8
\symbol_label\():
	.quad \symbol_size
	.quad \var_start
	.char \writable
	.ascii "\symbol_label"
	.balign 8
	.endm
	
	.section .rodata

welcome_message:
	.ascii "Hi, Anon!. This is the Eccentric-Winter compiler.\nA compiler for the Eccentric programming language.\nI hope that you find this system interesting and someday useful.\nThe Eccentric-Winter compiler is free software under the GPL 3 licence. Enjoy! UwUr.\nEccentric\n       	__\n      ¨¨)°\\\n     ./~~\\\\~~\\.\n     _///||\\\\\\_\n    //¨¨/¨/¨¨¨\\\\\n    ---(`(`----- ::WVJ\nHacking with me, anon?.\n\n\n\n"
welcome_message_length =	. - welcome_message

prompt_signal:
	.ascii "UwUr->"
prompt_signal_length =	. - prompt_signal
	
	atom_type_descriptor tibit, 0x1E, libit, 0x09, "tibit"
	atom_type_descriptor libit, 0x1E, cobit, 0x0A, "libit"
	atom_type_descriptor cobit, 0x1E, bibit, 0x0C, "cobit"
	atom_type_descriptor bibit, 0x1E, hubit, 0x10, "bibit"
	atom_type_descriptor hubit, 0x1E, hubit, 0x18, "hubit"

	atom_type_descriptor cons, 0x1D, hubit, 0x18, "cons"
	atom_type_descriptor pair, 0x1D, hubit, 0x18, "pair"

	atom_type_descriptor char, 0x1D, tibit, 0x09, "char"

	atom_type_descriptor bool, 0x1D, tibit, 0x09, "bool"
	
	atom_type_descriptor tinat, 0x1E, tibit, 0x09, "tinat"
	atom_type_descriptor linat, 0x1E, libit, 0x0A, "linat"
	atom_type_descriptor conat, 0x1E, cobit, 0x0C, "conat"
	atom_type_descriptor binat, 0x1E, bibit, 0x10, "binat"
	atom_type_descriptor hunat, 0x1E, hubit, 0x18, "hunat"

	atom_type_descriptor tinint, 0x1F, tibit, 0x09, "tinint"
	atom_type_descriptor litint, 0x1F, libit, 0x0A, "litint"
	atom_type_descriptor comint, 0x1F, cobit, 0x0C, "comint"
	atom_type_descriptor bigint, 0x1F, bibit, 0x10, "bigint"
	atom_type_descriptor hugint, 0x1F, hubit, 0x18, "hugint"

	product_descriptor string, 0x1f, char, "string"

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
