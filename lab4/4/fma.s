	.file	"fma.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	"fma_test"
	.def	"fma_test";	.scl	2;	.type	32;	.endef
	.seh_proc	"fma_test"
"fma_test":
	.seh_endprologue
	mulss	xmm0, xmm1
	addss	xmm0, xmm2
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "a = %.10g (0x%08X)\12\0"
.LC1:
	.ascii "b = %.10g (0x%08X)\12\0"
.LC2:
	.ascii "c = %.10g\12\0"
.LC3:
	.ascii "result = %.10g (0x%08X)\12\0"
	.align 8
.LC4:
	.ascii "\320\240\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202: 0.0 (\320\264\320\262\320\260 \320\276\320\272\321\200\321\203\320\263\320\273\320\265\320\275\320\270\321\217)\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	"main"
	.def	"main";	.scl	2;	.type	32;	.endef
	.seh_proc	"main"
"main":
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	"__main"
	mov	r8d, 1065353217
	movabs	rdx, 4607182419336888320
	lea	rcx, .LC0[rip]
	movq	xmm1, rdx
	call	"printf"
	mov	r8d, 1065353215
	movabs	rdx, 4607182418263146496
	lea	rcx, .LC1[rip]
	movq	xmm1, rdx
	call	"printf"
	lea	rcx, .LC2[rip]
	movabs	rdx, -4616189618054758400
	movq	xmm1, rdx
	call	"printf"
	pxor	xmm1, xmm1
	xor	r8d, r8d
	lea	rcx, .LC3[rip]
	movq	rdx, xmm1
	call	"printf"
	lea	rcx, .LC4[rip]
	call	"puts"
	xor	eax, eax
	add	rsp, 40
	ret
	.seh_endproc
	.def	"__main";	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev4, Built by MSYS2 project) 16.2.0"
	.def	"printf";	.scl	2;	.type	32;	.endef
	.def	"puts";	.scl	2;	.type	32;	.endef
