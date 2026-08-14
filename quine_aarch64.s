	.global _start
	.section .text
_start:
	mov x6, sp
	ldr x9, =0x20202020200a3023 //     \n0#//
	ldr x10, =0x2020202020202020 //        //
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c387820766f //# ,8x vo//
	ldr x10, =0x20637673090a3339 // cvs\t\n39//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7820766f6d090a30 //x vom\t\n0//
	ldr x10, =0x6d090a3023202c30 //m\t\n0# ,0//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3623202c38782076 //6# ,8x v//
	ldr x10, =0x2320637673090a34 //# cvs\t\n4//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3678202c32782062 //6x ,2x b//
	ldr x10, =0x6f6d090a3778202c //om\t\n7x ,//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x317820766f6d090a //1x vom\t\n//
	ldr x10, =0x7573090a3778202c //us\t\n7x ,//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f6d090a7073202c //om\t\nps ,//
	ldr x10, =0x3123202c30782076 //1# ,0x v//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x215d36312d23202c //!]61-# ,//
	ldr x10, =0x377820766f6d090a //7x vom\t\n//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c397820707473 // ,9x pts//
	ldr x10, =0x70735b202c303178 //ps[ ,01x//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x31782072646c090a //1x rdl\t\n//
	ldr x10, =0x090a78303d202c30 //\t\nx0= ,0//
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x72646c090a707320 //rdl\t\nps //
	ldr x10, =0x78303d202c397820 //x0= ,9x //
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
	mov x7, sp
	mov x0, #1
	mov x1, x7
	sub x2, x6, x7
	mov x8, #64
	svc #0
	mov x0, #0
	mov x8, #93
	svc #0
