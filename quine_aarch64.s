	.global _start
	.section .text
_start:
	mov x13, sp
	ldr x9, =0x34333231300a3023 //43210\n0#//
	ldr x10, =0x2020666564636261 //  fdecba//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c387820766f //# ,8x vo//
	ldr x10, =0x3938373635206376 //98765 cv//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7820766f6d090a30 //x vom\t\n0//
	ldr x10, =0x73090a33396d090a //s\t\n39m\t\n//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3623202c38782076 //6# ,8x v//
	ldr x10, =0x3023202c30232063 //0# ,0# c//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3678202c32782062 //6x ,2x b//
	ldr x10, =0x7673090a346f6d09 //vs\t\n4om\t//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x317820766f6d090a //1x vom\t\n//
	ldr x10, =0x0a3778202c757309 //\n7x ,us\t//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3778202c6f6d09 //\n7x ,om\t//
	ldr x10, =0x3123202c30782076 //1# ,0x v//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x766f6d090a707320 //vom\t\nps //
	ldr x10, =0x0a7073202c377820 //\nps ,7x //
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3a74726174735f //\n:trats_//
	ldr x10, =0x2c367820766f6d09 //,6x vom\t//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f69746365732e09 //oitces.\t//
	ldr x10, =0x0a747865742e206e //\ntxet. n//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c61626f6c672e09 //labolg.\t//
	ldr x10, =0x0a74726174735f20 //\ntrats_ //
	stp x9, x10, [sp, #-16]!
	mov x14, sp
	adrp x11, repetemp
	add  x11, x11, :lo12:repetemp
	adrp x12, repestuff
	add  x12, x12, :lo12:repestuff
	mov x15, #0
loadrepestuff:
	ldrb w16, [x11], #1
	strb w16, [x12], #1
	add x15, x13, 1
	cmp x15, #85
	b.lt loadrepestuff
printsfirst:
	mov x8, #64
	mov x0, #1
	mov x1, x14
	mov x2, #51
	svc #0
printlast:
	mov x8, #64
	mov x0, #1
	add x1, x14, #51
	sub x2, x13, x14
	sub x2, x2, #51
	svc #0
exitstuff:
	mov x0, #0
	mov x8, #93
	svc #0
	.section .rodata
repetemp: .ascii "\n\tldr x9, =0x2020202020202020\n\tldr x10, =0x2020202020202020\n\tstp x9, x10, [sp, #-16]!"
	.section .bss
	.align 7
repestuff: .zero 85 //bytes criticos desde byte 13 hasta el 29 y desde el 43 hasta el 59. la cadena termina en el byte 85
