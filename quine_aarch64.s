	.global _start
	.section .text
_start:
	stp x29, x30, [sp, #-32]!
	mov x29, sp
	str x20, [sp, #16]
	mov x13, sp
	ldr x9, =0x2020202020202020
	ldr x10, =0x657A2E203A666675
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
	add x15, x15, 1
	cmp x15, #85
	b.lt loadrepestuff
resetadresses:
	sub x12, x12, #85
	mov x15, #0
	mov x17, x14
printsfirst:
	mov x8, #64
	mov x0, #1
	mov x1, x14
	mov x2, #51
	svc #0
sandwich1:
	ldrb w16, [x17], #1
	and w18, w16, #0x0f
	b nibbletobyte
	strb w19, [x12], #1
	and w18, w16, #0xf0
	lsr w18 ,w18, #4
	b nibbletobyte
	strb w19, [x12], #1
	add x15, x15, #1
	cmp x15, #8
	b.lt sandwich1
	add x12, x12, #30
sandwich2:
	ldrb w16, [x17], #1
	and w18, w16, #0x0f
	b nibbletobyte
	strb w19, [x12], #1
	and w18, w16, #0xf0
	lsr w18 ,w18, #4
	b nibbletobyte
	strb w19, [x12], #1
	add x15, x15, #1
	cmp x15, #16
	b.lt sandwich2
resumeprinting:
	sub x12, x12, #85
	add x12, x12, #13
	mov x15, #0
	mov x8, #64
	mov x0, #1
	mov x1, repestuff
	mov x2, 85
	svc #0
	cmp x13, x17
	b.lt sandwich1
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
	b.eq cerobyte
cerobyte:
	mov w19, #0x30
	cmp w18, #0x01
	b.eq onebyte
onebyte:
	mov w19, #0x31
	cmp w18, #0x02
	b.eq twobyte
twobyte:
	mov w19, #0x32
	cmp w18, #0x03
	b.eq threebyte
threebyte:
	mov w19, #0x33
	cmp w18, #0x04
	b.eq fourbyte
fourbyte:
	mov w19, #0x34
	cmp w18, #0x05
	b.eq fivebyte
fivebyte:
	mov w19, #0x35
	cmp w18, #0x06
	b.eq sixbyte
sixbyte:
	mov w19, #0x36
	cmp w18, #0x07
	b.eq sevenbyte
sevenbyte:
	mov w19, #0x37
	cmp w18, #0x08
	b.eq eigthbyte
eigthbyte:
	mov w19, #0x38
	cmp w18, #0x09
	b.eq ninebyte
ninebyte:
	mov w19, #0x39
	cmp w18, #0x0a
	b.eq abyte
abyte:
	mov w19, #0x61
	cmp w18, #0x0b
	b.eq bbyte
bbyte:
	mov w19, #0x62
	cmp w18, #0x0c
	b.eq cbyte
cbyte:
	mov w19, #0x63
	cmp w18, #0x0d
	b.eq dbyte
dbyte:
	mov w19, #0x64
	cmp w18, #0x0e
	b.eq ebyte
ebyte:
	mov w19, #0x65
	cmp w18, #0x0f
	b.eq fbyte
fbyte:
	mov w19, #0x66
	ret
	.section .rodata
repetemp: .ascii "\n\tldr x9, =0x2020202020202020\n\tldr x10, =0x2020202020202020\n\tstp x9, x10, [sp, #-16]!"
	.section .bss
	.align 7
repestuff: .zero 85 //bytes criticos desde byte 13 hasta el 29 y desde el 43 hasta el 59. la cadena termina en el byte 85
