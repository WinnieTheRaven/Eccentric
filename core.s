	.equ cons_car, 0	
	.equ cons_cdr, 8
	.equ cons_cdr, 16
	
	.macro atom_type_descriptor type_label, symbol_size, parent_type_address, byte_size, type_name
	.global type_label
\type_label :
	.quad \symbol_size
	.quad \parent_type_address
	.quad \byte_size
	.byte \type_name
	.endm
	
	.section .rodata
	.align 8
	.global tinat
tinat:
	.quad 0x000000000000001D
	.quad tinat
	.quad 0x0000000000000001
	.byte 0x74, 0x69, 0x6E, 0x61, 0x74
	
	.global linat
linat:
	.quad 0x000000000000001D
	.quad linat
	.quad 0x0000000000000001
	.byte 0x74, 0x69, 0x6E, 0x61, 0x74
	.global system_size
system_size:	.byte 0xffffffffffffffff
	
