	/*Hey!. Dear human being reading this file. I started writing this program
	some time ago. This program is an attempt to build a chain of automatas.
	after reading and failing to implement my ideas as a chain of FSTs I learned
	the hard way that I need a stack to buld my ASTs. So I'm moving to learn and
	implement pushdown transducers (PDTs).
	PDT number one should input raw text with S-expressions and comments
	and filter comments.
	PDT number two should input the text with no comments and output an AST.
	Automata number 3 should input the AST from PDT-2 and output x86-64 code.
	I currently don't know what automata number 3 will be.
	all of this with the hope of building a bootstrap point for the smallest
	nessesary core from wich the Eccentric IR can be self hosted and then build
	up to the front-end language.
	The next three lines define the outline of a cons-cell*/
	.equ cons_car, 0	# Cons starting point.
	.equ cons_cdr, 8	# car end.
	.equ cons_size, 16	# cdr end.
	/*In this section the transducing routine should start*/
	section .text
	.globl _start
_start:
	/* Our first desire initiallizing the compiler is to reserve some space to
	parse string to s-expressions/ASTs. So we reserve a dynamic memory space
	to allocate our ASTs*/
	mov $12, %rax	// loading a 12 to make a sys_break with syscall
	xor %rdi, %rdi	// Zeroing rdi will return the current adress to us
	syscall	/* We called sys_break and now rax holds the current dynamic
	memory start adress*/
	mov %rax, consing_floor(%rip)	/* Now we load the dynamic memory start
	adress in consing_floor*/
	mov %rax, consing_at(%rip)	/*We do the same for the current
	consing position*/
	mov %rax, %rdi	// We store the start of our dynamic memory into rdi
	lea 4096(%rax), %rdi // We request for a page adding that amount to %rdi
	mov $12, %rax // We load 12 again in rax to make the sys_break and do the request
	syscall	// We syscall
	mov %rax, consing_ceiling(%rip) // We store the new current ceiling
	mov $60, %rax // We load 60 to do an exit syscall
	xor %rdi, %rdi // With 0 error code
	syscall // We exit
	/* First thing we need to define is THE NIL list.
	For that I just think it should be a constant 16 byte block with
	both the upper and lower halfs referencing NIL itself
	referencing the lower half.
	In this section we define the NIL stuff. It should look like this:
	`(car nil) -> nil` and `(cdr nil) -> nil`*/
	.section .rodata
	.align 16	/*We reserve 16 bytes of memory to store the NIL*/
NIL:	/*The nil is defined here*/
NILCAR:	.quad NIL	/*The lower part references NIL*/
NILCDR:	.quad NIL	/*The upper part references NIL too*/
	.section .bss
	.lcomm consing_floor, 8 // Here we store the current consing starting point
	.lcomm consing_at, 8 // The place where we are consing
	.lcomm consing_ceiling,8 	// The consing space current limit
	/*In this section I define some string that has the shape of a lisp program
	(so I can design my transducers).*/
TEST_1: /*This is a syntactically correct code example with comments*/
	.ascii ";awer4\n\0\001\002\n((a r (x))\n  (d e (f  g) h #|ada#|#))"
TEST_1_LEN: .quad . - TEST_1
TEST_2: /*Syntactically incorrect string with an unresolved comment block*/
	.ascii ";\n((a r (x))\n  (d e (f  g) h #|ada#))"
TEST_2_LEN: .quad .  - TEST_2
TEST_3: /*Correct code with a string full of weird parens and escaped double quotes*/
	.ascii "(e()\"sd)p(f\\\"89\\\"h\")"
TEST_3_LEN: .quad . - TEST_3
	/*I might be wrong about implementation details. But I feel that functions that
	check cons-ness and truthy-ness (as type) and truth values individually
	shold be defined in the IR
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	This section will try to define two PDTs that will take raw text with
	S-expressions and output an AST made of cons-cells
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	These PDTs will be:
	Norie: She will ignore comments and trigger errors when non printable
	characters are found.
	Tribbie: She will process the rest of the valid characters and construct an AST
	(no matter if the tree is full of rubbish).
	Take for example the following source code:
	(TBH this example is mainly for me. I'm deeply afraid of this project)
	```Eccentric
	;;;aasliduhfgalsiubf
	#|scñdouiunñoincsdpoinñ{outline
	asdikfjbaoubsdouba''90'¿0u|#
	
	((a r (x))
	  (d e (f  g) h))```

	It should be processed by Tribbie into:
	```
	[o|o]------------------------[o|o]---NIL
	 |                            |
	[o|o]---[o|o]---[o|o]---NIL  [o|o]---[o|o]---[o|o]-----------------[o|o]---NIL
	 |       |       |            |       |       |                     |
	 a       r      [o|o]---NIL   d       e      [o|o]---[o|o]---NIL    h
	                 |                            |       |
	                 x                            f       g```
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	HEY,LISTEN!: Section about assembly conventions and goals
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	I've mentioned a "Lisp" as a goal. But What I'm trying to build really?
	If you're a person mildly interested on programming from first principles
	or if you come from programming on higher languages you might
	find hardware annoyingly obscure.
	As a mathematician who has written a non trivial amount of mildly well
	performing software; it feelt weird whenever a peer who has a stronger
	background on CS (or any adjacent field) asks me:
	- Hey. But can you show that your vector operations are using SIMD?
	I used to answer:
	+ I don't know, what is SIMD?. I broadcasted this lambda over the vector.
	Hardware terminology can feel a lot like a mountain of non self explanatory
	conventions.
	My language design journey started after a coworker (and a friend)
	asked me:
	- ¿Y cuando haces tu propio lenguaje entonces?.
	And my mind got rolling.
	For me programming is a lot about transforming info, materiallizing thought,
	and tackling interesting problems. But my focus was always on data and
	abstract stuff. Hardware feels a lot like a black box to me and that makes me
	feel afraid of electronics and I truly dislike the feeling of learning the
	"right" lingo without knowing what's behind. So my first desire as a language
	designer is to get to understand hardware on my own terms. And as a
	mathematician who likes actions and transitions; I feel that algebra must be
	my guide.
	I feel in love with Lisp because of its flexibility and elegance at
	describing patterns through macros.
	Then I thought that if I really wanted to understand my own compiler
	as well as I could I should bootstrap it from assembly
	(the file that you're reading it).
	When researching on bootstrapping strategies like this and who else did it
	I came across the jonesforth.s.txt file (by Richard W.M. Jones)
	and I got hooked with the idea. That file is the main inspiration for this
	approach and philosophy.
	Jones then talks about Lisp and FORTH being siblings and about how Lisp
	is the ultimate higher language and FORTH fills that role for
	systems programming. Beyond that being an interesting opinion I now had a
	question in my mind: What is FORTH?.
	I read the wikipedia entry and I was sincerily salivating. FORTH is:
	- Metaprogrammable: you extend the language through a dictionary.
	- Reflecting: It allows you to directly interact live with hardware through
	a REPL.
	- light (binaries are smol).
	- Small: As Jones demonstrated it; it can be "easily" DIY built.
	The main attractive for me was the live interaction with hardware aspect.
	If you can get your hands dirty on real time you can easy get a feeling
	on what's happenning. What is right and what is not.
	Then the obvious question that follows is:
	How the hell can FORTH be as interactive as it is?.
	It turns out that by following that thread (ba dum tss) you can answer
	how FORTH achieves all of those (awesome) properties.
	TLDR: Threaded code and a dictionary.
	In all seriousness. The fuck are those?.
	The explanation I'm about to give is mostly as wrong as a mathematician
	is expected to be about computer science.
	A historical perspective is needed here. FORTH was born in the 1970's.
	Computers now (from the perspective of a human living in the 1970's)
	are opulent. They have quite too much resources on their circuits.
	A modern CPU (now being 2026) has more space in their L1 through L3 caches
	than all the memory a computer from the Apollo mission had.
	CPU's used to not have  cache memory built on top of them.
	CPU's used to do everything from and on RAM. So every bit of space
	was precious. That means that your programs must be lightweight as well.
	Which means you should avoid repeating code at all costs.
	An easy and good enough solution is to just describe al bigger tasks in terms
	of smaller tasks and then just call them a lot.
	You. Living in the 21st century and having a higher level language as your
	first ever language; might feel that this is obvious and redundant.
	But you don't know what your compiler does in the privacy of her own
	bedroom ¬u¬.
	Modern compilers operate in a way that facilitates how processors do their stuff.
	Mainly reading instructions or data, doing math with those and then writting at
	some address.
	Modern CPU's have some assumptions that make their work easier.
	Mainly that info and instructions sit closely in memory. Or as CS people say
	they have good memory locallity.
	The rip (instruction pointer register) is like my hands are.
	Shaky. But they know where the chocolate mug is.
	This means that if you need to jump a lot in memory your instruction pointer
	might have to travel a lot. And it being shaky will take longer to get.
	Which means slower execution times.
	Please don't make me walk for my chocolate upstairs and far neither.
	In contrast to a CPU. I can get really annoyed with you.
	If you need machine instructions close in memory all the time this means
	that instructions are in the lower level repeated, folded and scrambled a lot.
	So that every code block can have the closest instance of the instructions needed.
	This makes the assembly/machine code quite scrambled and hard to separate and rewrite.
	So the compilers of this gentle world tend to offer you:
	A: You get to know and easily rewrite your functions while saving space but
	sacrificing speed and compatibility with most computer systems.
	B: Computers go brr with speed and they're universally compatible,
	but binaries are heavy, initiallize slowly, and they're set in stone and scrambled.
	I'm greedy. So I want both.
	So how I'll try to achieve both?.
	These transducers (my first bootstrapping point) will use code that is optimized
	for the rip register so they go brr and fast.
	But the core.uwur file (where the IR and other stuff lives) will offer you this:
	```
	               Your Code
	                   |
	                   |
	           compiler-function
	                   |
	                   |
	    -------------------------------
	    |                             |
	    |                             |
	    |                             |
	threaded-code flag         cache-friendly flag
	    |                             |
	    |                             |
	threaded IR                cache-friendly IR```
	This will try to make interactive coding as important and accessible as
	"set in stone and faster" binaries. So that when you feel the problem you
	encounter is decently solved, you just compile your stuff with cache friendly stuff.
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	On constructing Norie UwUr:
	--> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> --> -->
	I used to believe that I knew what Norie should be (an FST).
	Now I know that she is a PushDown Transducer (PDT).
	```
	```*/
	.globl CONSER
	.text
CONSER:
	pushq %rbp
	mov %rsp, %rbp
	mov %rbp, %rsp
	pop %rbp
	ret
	
	.globl NORIE
	.text
NORIE:
	pushq %rbp
	mov %rsp, %rbp
	mov %rbp, %rsp
	pop %rbp
	ret
