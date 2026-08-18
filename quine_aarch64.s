	.global _start
	.section .text
_start:
	stp x29, x30, [sp, #-32]!
	mov x29, sp
	str x20, [sp, #16]
	mov x13, sp
	ldr x9, =0x766f6d090a5d3631
	ldr x10, =0x7073202c33317820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3032782072747309
	ldr x10, =0x23202c70735b202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a215d
	ldr x10, =0x0a7073202c393278
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x5b202c303378202c
	ldr x10, =0x32332d23202c7073
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3a74726174735f
	ldr x10, =0x3932782070747309
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f69746365732e09
	ldr x10, =0x0a747865742e206e
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c61626f6c672e09
	ldr x10, =0x0a74726174735f20
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
	add x15, x15, #1
	cmp x15, #85
	b.lt loadrepestuff
resetadresses:
	sub x12, x12, #85
	add x12, x12, #43
	mov x15, #0
	mov x17, x13
	mov x20, x14
printfirst:
	mov x8, #64
	mov x0, #1
	mov x1, x14
	mov x2, #112
	svc #0
sandwich1:
	ldrb w16, [x17], #-1
	and w18, w16, #0x0f
	bl nibbletobyte
	strb w19, [x12], #1
	and w18, w16, #0xf0
	lsr w18 ,w18, #4
	bl nibbletobyte
	strb w19, [x12], #1
	add x15, x15, #1
	cmp x15, #8
	b.lt sandwich1
	sub x12, x12, #46
sandwich2:
	ldrb w16, [x17], #-1
	and w18, w16, #0x0f
	bl nibbletobyte
	strb w19, [x12], 1
	and w18, w16, #0xf0
	lsr w18 ,w18, #4
	bl nibbletobyte
	strb w19, [x12], #1
	add x15, x15, #1
	cmp x15, #16
	b.lt sandwich2
resumeprinting:
	sub x12, x12, #29
	add x12, x12, #43
	mov x15, #0
	mov x8, #64
	mov x0, #1
	ldr x1, =repestuff
	mov x2, #85
	svc #0
	cmp x17, x20
	b.gt sandwich1
printlast:
	mov x8, #64
	mov x0, #1
	add x1, x14, #51
	sub x2, x13, x14
	sub x2, x2, #51
	svc #0
exitstuff:
	ldr x20, [sp, #16]
	ldp x29, x30, [sp], #32
	mov x0, #0
	mov x8, #93
	svc #0
nibbletobyte:
	cmp w18, #0x00
	b.eq zerobyte
	cmp w18, #0x01
	b.eq onebyte
	cmp w18, #0x02
	b.eq twobyte
	cmp w18, #0x03
	b.eq threebyte
	cmp w18, #0x04
	b.eq fourbyte
	cmp w18, #0x05
	b.eq fivebyte
	cmp w18, #0x06
	b.eq sixbyte
	cmp w18, #0x07
	b.eq sevenbyte
	cmp w18, #0x08
	b.eq eigthbyte
	cmp w18, #0x09
	b.eq ninebyte
	cmp w18, #0x0a
	b.eq abyte
	cmp w18, #0x0b
	b.eq bbyte
	cmp w18, #0x0c
	b.eq cbyte
	cmp w18, #0x0d
	b.eq dbyte
	cmp w18, #0x0e
	b.eq ebyte
	cmp w18, #0x0f
	b.eq fbyte
zerobyte:
	mov w19, #0x30
	ret
onebyte:
	mov w19, #0x31
	ret
twobyte:
	mov w19, #0x32
	ret
threebyte:
	mov w19, #0x33
	ret
fourbyte:
	mov w19, #0x34
	ret
fivebyte:
	mov w19, #0x35
	ret
sixbyte:
	mov w19, #0x36
	ret
sevenbyte:
	mov w19, #0x37
	ret
eigthbyte:
	mov w19, #0x38
	ret
ninebyte:
	mov w19, #0x39
	ret
abyte:
	mov w19, #0x61
	ret
bbyte:
	mov w19, #0x62
	ret
cbyte:
	mov w19, #0x63
	ret
dbyte:
	mov w19, #0x64
	ret
ebyte:
	mov w19, #0x65
	ret
fbyte:
	mov w19, #0x66
	ret
	.section .rodata
repetemp: .ascii "\n\tldr x9, =0x2020202020202020\n\tldr x10, =0x2020202020202020\n\tstp x9, x10, [sp, #-16]!"
	.section .bss
	.align 7
repestuff: .zero 85 //bytes criticos desde byte 13 hasta el 29 y desde el 43 hasta el 59. la cadena termina en el byte 85
