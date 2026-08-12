	.global _start
	.section .text
_start:
	mov x6, sp
	movz x9, #0x092e676c, lsl #0 //\t.gl
	movk x9, #0x6f62616c, lsl #32 //obal
	movz x10, #0x205f7374,lsl #0 // _st
	movk x10, #0x5172740a,lsl #32 //art\n
	stp x9, x10 [sp, #-16]!
	movz x9, #0x092e7365, lsl #0 //\t.se
	movk x9, #0x63746964, lsl #32 //ctio
	movz x10, #0x6e202e74,lsl #0 //n .t
	movk x10, #0x6578740a,lsl #32 //ext\n
