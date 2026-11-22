	.file	"fp_examples.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	"f2c"
	.def	"f2c";	.scl	2;	.type	32;	.endef
	.seh_proc	"f2c"
"f2c":
	.seh_endprologue
	subss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm0, DWORD PTR .LC1[rip]
	ret
	.seh_endproc
	.p2align 4
	.globl	"sqrt_demo"
	.def	"sqrt_demo";	.scl	2;	.type	32;	.endef
	.seh_proc	"sqrt_demo"
"sqrt_demo":
	.seh_endprologue
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	cvtsi2ss	xmm0, ecx
	comiss	xmm0, xmm1
	jb	.L4
	sqrtss	xmm0, xmm0
.L4:
	cvttss2si	eax, xmm0
	movss	DWORD PTR [rdx], xmm0
	mov	DWORD PTR [r8], eax
	ret
	.seh_endproc
	.p2align 4
	.globl	"e_const"
	.def	"e_const";	.scl	2;	.type	32;	.endef
	.seh_proc	"e_const"
"e_const":
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC3[rip]
	mov	eax, 1
	movapd	xmm3, xmm0
	movapd	xmm0, xmm1
	comisd	xmm1, xmm3
	jb	.L7
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	add	eax, 1
	comisd	xmm1, xmm3
	addsd	xmm0, xmm1
	jnb	.L10
.L7:
	ret
	.seh_endproc
	.p2align 4
	.globl	"add_ld"
	.def	"add_ld";	.scl	2;	.type	32;	.endef
	.seh_proc	"add_ld"
"add_ld":
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fld	TBYTE PTR [r8]
	mov	rax, rcx
	faddp	st(1), st
	fstp	TBYTE PTR [rcx]
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "f2c(32)  = %.9g\12\0"
.LC6:
	.ascii "f2c(212) = %.9g\12\0"
.LC7:
	.ascii "f2c(-40) = %.9g\12\0"
	.align 8
.LC9:
	.ascii "sqrt_demo(%d): dst = %.9g, idst = %d\12\0"
	.align 8
.LC12:
	.ascii "e_const(%.0e) = %.17g (M_E = %.17g)\12\0"
.LC14:
	.ascii "add_ld(1, 2) = %.21Lg\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	"main"
	.def	"main";	.scl	2;	.type	32;	.endef
	.seh_proc	"main"
"main":
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	.seh_endprologue
	pxor	xmm6, xmm6
	call	"__main"
	pxor	xmm1, xmm1
	lea	rbx, 48[rsp]
	lea	rcx, .LC5[rip]
	movq	rdx, xmm1
	lea	rsi, 60[rsp]
	call	"printf"
	movsd	xmm1, QWORD PTR .LC15[rip]
	movabs	rdx, 0x4059000020000000
	lea	rcx, .LC6[rip]
	call	"printf"
	movsd	xmm1, QWORD PTR .LC16[rip]
	movabs	rdx, 0xc044000000000000
	lea	rcx, .LC7[rip]
	call	"printf"
	mov	DWORD PTR 56[rsp], -1
	movabs	rax, 8589934692
	mov	QWORD PTR 48[rsp], rax
.L19:
	mov	edx, DWORD PTR [rbx]
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, edx
	comiss	xmm0, xmm6
	jb	.L17
	sqrtss	xmm0, xmm0
.L17:
	cvttss2si	r9d, xmm0
	pxor	xmm5, xmm5
	lea	rcx, .LC9[rip]
	add	rbx, 4
	cvtss2sd	xmm5, xmm0
	movq	r8, xmm5
	movapd	xmm2, xmm5
	call	"printf"
	cmp	rbx, rsi
	jne	.L19
	mov	rax, QWORD PTR .LC11[rip]
	movupd	xmm0, XMMWORD PTR .LC10[rip]
	lea	rbx, 64[rsp]
	lea	rsi, 88[rsp]
	movsd	xmm6, QWORD PTR .LC3[rip]
	movsd	xmm3, QWORD PTR .LC17[rip]
	mov	QWORD PTR 80[rsp], rax
	movups	XMMWORD PTR 64[rsp], xmm0
.L23:
	movsd	xmm1, QWORD PTR [rbx]
	movapd	xmm2, xmm6
	movapd	xmm0, xmm6
	mov	eax, 1
	comisd	xmm6, xmm1
	jb	.L20
	.p2align 5
	.p2align 4
	.p2align 3
.L22:
	pxor	xmm4, xmm4
	cvtsi2sd	xmm4, eax
	divsd	xmm0, xmm4
	add	eax, 1
	comisd	xmm0, xmm1
	addsd	xmm2, xmm0
	jnb	.L22
.L20:
	movq	r9, xmm3
	movq	r8, xmm2
	movq	rdx, xmm1
	add	rbx, 8
	lea	rcx, .LC12[rip]
	call	"printf"
	cmp	rbx, rsi
	movsd	xmm3, QWORD PTR .LC17[rip]
	jne	.L23
	fld	DWORD PTR .LC13[rip]
	lea	rdx, 32[rsp]
	lea	rcx, .LC14[rip]
	fstp	TBYTE PTR 32[rsp]
	call	"printf"
	nop
	movups	xmm6, XMMWORD PTR 96[rsp]
	xor	eax, eax
	add	rsp, 120
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1107296256
	.align 4
.LC1:
	.long	1057896676
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 16
.LC10:
	.long	-1598689907
	.long	1051772663
	.long	-2127697391
	.long	1030854553
	.align 8
.LC11:
	.long	-1747416644
	.long	1016910514
	.align 4
.LC13:
	.long	1077936128
	.align 8
.LC15:
	.long	536870912
	.long	1079574528
	.align 8
.LC16:
	.long	0
	.long	-1069285376
	.align 8
.LC17:
	.long	-1961601175
	.long	1074118410
	.def	"__main";	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev4, Built by MSYS2 project) 16.2.0"
	.def	"printf";	.scl	2;	.type	32;	.endef
