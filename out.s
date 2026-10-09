	.section .rodata
	.globl quine
quine:	.ascii "\t.section .rodata\n\t.globl quine\nquine:\t.ascii \"\"\nquine_length:\t.quad . - quine\nquine_pt1:\t.quad 46\ntab_s:\t.ascii \"\\\\t\"\nnewline_s:\t.ascii \"\\\\n\"\nquote_s:\t.ascii \"\\\\\\\"\"\nslash_s:\t.ascii \"\\\\\\\\\"\nlit_char:\t.quad 2\n\t.section .text\n\t.globl _start\n_start:\n\tpushq %rbp\n\tmovq %rsp, %rbp\nnor_str1_start:\n\tleaq quine(%rip), %rsi\n\txorq %r8, %r8\nnor_str1_iter:\n\tcall print_char\n\tincq %rsi\n\tincq %r8\n\tcmpq quine_pt1(%rip), %r8\n\tjbe nor_str1_iter\nstr1_strt:\n\tleaq quine(%rip), %rsi\n\txorq %r8,%r8\nstr1_iter:\n\tcmpb $9, (%rsi)\n\tje prnt_tab\n\tcmpb $10, (%rsi)\n\tje prnt_newline\n\tcmpb $34, (%rsi)\n\tje prnt_quote\n\tcmpb $92, (%rsi)\n\tje prnt_slash\n\tcall print_char\nstr1_iter_back:\n\tincq %rsi\n\tincq %r8\n\tcmpq quine_pt1(%rip), %r8\n\tjb str1_iter\nstr2_strt:\n\tleaq quine(%rip), %rsi\n\taddq $46, %rsi\n\tmovq $46, %r8\nstr2_iter:\n\tcmpb $9, (%rsi)\n\tje prnt_tab\n\tcmpb $10, (%rsi)\n\tje prnt_newline\n\tcmpb $34, (%rsi)\n\tje prnt_quote\n\tcmpb $92, (%rsi)\n\tje prnt_slash\n\tcall print_char\nstr2_iter_back:\n\tincq %rsi\n\tincq %r8\n\tcmpq quine_length(%rip), %r8\n\tjb str2_iter\nnor_st2_start:\n\tleaq quine(%rip), %rsi\n\taddq $47, %rsi\n\tmovq $47, %r8\nnor_str2_iter:\t\n\tcall print_char\n\tincq %rsi\n\tincq %r8\n\tcmpq quine_length(%rip), %r8\n\tjb nor_str2_iter\n\tje go_out\nprnt_tab:\n\tleaq (%rsi), %r9\n\tleaq tab_s(%rip), %rsi\n\tcall prnt_lit\n\tleaq (%r9), %rsi\n\tcmpq quine_pt1(%rip), %r8\n\tjb str1_iter_back\n\tjae str2_iter_back\nprnt_newline:\n\tleaq (%rsi), %r9\n\tleaq newline_s(%rip), %rsi\n\tcall prnt_lit\n\tleaq (%r9), %rsi\n\tcmpq quine_pt1(%rip), %r8\n\tjb str1_iter_back\n\tjae str2_iter_back\nprnt_quote:\n\tleaq (%rsi), %r9\n\tleaq quote_s(%rip), %rsi\n\tcall prnt_lit\n\tleaq (%r9), %rsi\n\tcmpq quine_pt1(%rip), %r8\n\tjb str1_iter_back\n\tjae str2_iter_back\nprnt_slash:\n\tleaq (%rsi), %r9\n\tleaq slash_s(%rip), %rsi\n\tcall prnt_lit\n\tleaq (%r9), %rsi\n\tcmpq quine_pt1(%rip), %r8\n\tjb str1_iter_back\n\tjae str2_iter_back\nprnt_lit:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tmovq $1, %rax\n\tmovq $1, %rdi\n\tmovq lit_char(%rip), %rdx\n\tsyscall\n\tmovq %rbp, %rsp\n\tpop %rbp\n\tret\ngo_out:\n\tmovq %rbp, %rsp\n\tpopq %rbp\n\tmovq $60, %rax\n\txorq %rdi, %rdi\n\tsyscall\nprint_char:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tmovq $1, %rax\n\tmovq $1, %rdi\n\tmovq $1, %rdx\n\tsyscall\n\tmovq %rbp, %rsp\n\tpop %rbp\n\tret\n"
quine_length:	.quad . - quine
quine_pt1:	.quad 46
tab_s:	.ascii "\\t"
newline_s:	.ascii "\\n"
quote_s:	.ascii "\\\""
slash_s:	.ascii "\\\\"
lit_char:	.quad 2
	.section .text
	.globl _start
_start:
	pushq %rbp
	movq %rsp, %rbp
nor_str1_start:
	leaq quine(%rip), %rsi
	xorq %r8, %r8
nor_str1_iter:
	call print_char
	incq %rsi
	incq %r8
	cmpq quine_pt1(%rip), %r8
	jbe nor_str1_iter
str1_strt:
	leaq quine(%rip), %rsi
	xorq %r8,%r8
str1_iter:
	cmpb $9, (%rsi)
	je prnt_tab
	cmpb $10, (%rsi)
	je prnt_newline
	cmpb $34, (%rsi)
	je prnt_quote
	cmpb $92, (%rsi)
	je prnt_slash
	call print_char
str1_iter_back:
	incq %rsi
	incq %r8
	cmpq quine_pt1(%rip), %r8
	jb str1_iter
str2_strt:
	leaq quine(%rip), %rsi
	addq $46, %rsi
	movq $46, %r8
str2_iter:
	cmpb $9, (%rsi)
	je prnt_tab
	cmpb $10, (%rsi)
	je prnt_newline
	cmpb $34, (%rsi)
	je prnt_quote
	cmpb $92, (%rsi)
	je prnt_slash
	call print_char
str2_iter_back:
	incq %rsi
	incq %r8
	cmpq quine_length(%rip), %r8
	jb str2_iter
nor_st2_start:
	leaq quine(%rip), %rsi
	addq $47, %rsi
	movq $47, %r8
nor_str2_iter:	
	call print_char
	incq %rsi
	incq %r8
	cmpq quine_length(%rip), %r8
	jb nor_str2_iter
	je go_out
prnt_tab:
	leaq (%rsi), %r9
	leaq tab_s(%rip), %rsi
	call prnt_lit
	leaq (%r9), %rsi
	cmpq quine_pt1(%rip), %r8
	jb str1_iter_back
	jae str2_iter_back
prnt_newline:
	leaq (%rsi), %r9
	leaq newline_s(%rip), %rsi
	call prnt_lit
	leaq (%r9), %rsi
	cmpq quine_pt1(%rip), %r8
	jb str1_iter_back
	jae str2_iter_back
prnt_quote:
	leaq (%rsi), %r9
	leaq quote_s(%rip), %rsi
	call prnt_lit
	leaq (%r9), %rsi
	cmpq quine_pt1(%rip), %r8
	jb str1_iter_back
	jae str2_iter_back
prnt_slash:
	leaq (%rsi), %r9
	leaq slash_s(%rip), %rsi
	call prnt_lit
	leaq (%r9), %rsi
	cmpq quine_pt1(%rip), %r8
	jb str1_iter_back
	jae str2_iter_back
prnt_lit:
	pushq %rbp
	movq %rsp, %rbp
	movq $1, %rax
	movq $1, %rdi
	movq lit_char(%rip), %rdx
	syscall
	movq %rbp, %rsp
	pop %rbp
	ret
go_out:
	movq %rbp, %rsp
	popq %rbp
	movq $60, %rax
	xorq %rdi, %rdi
	syscall
print_char:
	pushq %rbp
	movq %rsp, %rbp
	movq $1, %rax
	movq $1, %rdi
	movq $1, %rdx
	syscall
	movq %rbp, %rsp
	pop %rbp
	ret
