	.global _start
	.section .text
_start:
	mov x6, sp
	ldr x9, =0x6f69746365732e09 //oitces.\t//
	ldr x10, =0x0a747865742e206e //\ntxet. n//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c61626f6c672e09 //labolg.\t//
	ldr x10, =0x0a74726174735f20 //\ntrats_ //
	stp x9, x10, [sp, #-16]!
	mov x7, sp
	mov x0, #1
	mov x1, x7
	sub x2, x6, x7
	mov x8, #64
	svc #0
	mov x0, #0
	mov x8, #93
	svc #0
