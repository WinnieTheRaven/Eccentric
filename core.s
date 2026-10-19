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

	.macro serial_type_descriptor type_label, symbol_size, quotient_type, type_name
	.global \type_label
	.balign 8
\type_label\():
	.quad \symbol_size
	.quad \quotient_type
	.ascii "\type_name"
	.balign 8
	.endm                                                                                         
	
	.section .rodata

	atom_type_descriptor tibit, 0x1E, libit, 0x10, "tibit"
	atom_type_descriptor libit, 0x1E, cobit, 0x10, "libit"
	atom_type_descriptor cobit, 0x1E, bibit, 0x10, "cobit"
	atom_type_descriptor bibit, 0x1E, bibit, 0x10, "bibit"

	atom_type_descriptor symbol, 0x1F, cons, 0x18, "symbol"

	atom_type_descriptor cons, 0x1D, cons, 0x18, "cons"

	atom_type_descriptor char, 0x1D, tibit, 0x10, "char"

	atom_type_descriptor bool, 0x1D, tibit, 0x10, "bool"
	
	atom_type_descriptor tinat, 0x1E, tibit, 0x10, "tinat"
	atom_type_descriptor linat, 0x1E, libit, 0x10, "linat"
	atom_type_descriptor conat, 0x1E, cobit, 0x10, "conat"
	atom_type_descriptor binat, 0x1E, bibit, 0x10, "binat"

	atom_type_descriptor tinint, 0x1F, tibit, 0x10, "tinint"
	atom_type_descriptor litint, 0x1F, libit, 0x10, "litint"
	atom_type_descriptor comint, 0x1F, cobit, 0x10, "comint"
	atom_type_descriptor bigint, 0x1F, bibit, 0x10, "bigint"

	serial_type_descriptor string, 0x1f, char, "string"

	.equ cons_desc, 0
	.equ cons_car, 8	
	.equ cons_cdr, 16
	.equ cons_cdr, 24

	global nil
nil:
	.balign 8
	.quad cons
	.quad nil
	.quad nil
	.balign 8

	global yep
yep:
	.balign 8
	.quad bool
	.byte 0xff
	.balign 8

	global nop
nop:
	.balign 8
	.quad bool
	.byte 0x00
	.balign 8
	
	global system_size
system_size:
	.balign 8
	.quad binat
	.quad 0xffffffffffffffff
	.balign
