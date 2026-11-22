"mul_ijk()":
        mov     eax, DWORD PTR "n"[rip]
        test    eax, eax
        jle     .L9
        push    rbx
        mov     r8, QWORD PTR "b"[rip]
        lea     rsi, [0+rax*8]
        xor     r10d, r10d
        mov     rbx, QWORD PTR "a"[rip]
        mov     r11, QWORD PTR "c"[rip]
.L3:
        mov     rdi, QWORD PTR [rbx+r10]
        mov     r9, QWORD PTR [r11+r10]
        xor     ecx, ecx
.L6:
        xor     eax, eax
        pxor    xmm1, xmm1
.L4:
        mov     rdx, QWORD PTR [r8+rax]
        movsd   xmm0, QWORD PTR [rdx+rcx]
        mulsd   xmm0, QWORD PTR [rdi+rax]
        add     rax, 8
        addsd   xmm1, xmm0
        cmp     rsi, rax
        jne     .L4
        movsd   QWORD PTR [r9+rcx], xmm1
        add     rcx, 8
        cmp     rsi, rcx
        jne     .L6
        add     r10, 8
        cmp     rsi, r10
        jne     .L3
        pop     rbx
        ret
.L9:
        ret
"mul_ikj()":
        mov     eax, DWORD PTR "n"[rip]
        test    eax, eax
        jle     .L21
        push    rbx
        mov     r11, QWORD PTR "c"[rip]
        lea     rcx, [0+rax*8]
        xor     r10d, r10d
        mov     rbx, QWORD PTR "a"[rip]
        mov     r9, QWORD PTR "b"[rip]
.L15:
        mov     r8, QWORD PTR [rbx+r10]
        mov     rdx, QWORD PTR [r11+r10]
        xor     edi, edi
.L17:
        movsd   xmm1, QWORD PTR [r8+rdi]
        mov     rsi, QWORD PTR [r9+rdi]
        xor     eax, eax
.L16:
        movsd   xmm0, QWORD PTR [rsi+rax]
        mulsd   xmm0, xmm1
        addsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rcx, rax
        jne     .L16
        add     rdi, 8
        cmp     rcx, rdi
        jne     .L17
        add     r10, 8
        cmp     rcx, r10
        jne     .L15
        pop     rbx
        ret
.L21:
        ret
.LC2:
        .string "ijk"
.LC3:
        .string "ikj"
.LC7:
        .string "%d,%s,%d,%.6f,%.3f,%.9f\n"
"main":
        push    r15
        mov     r15d, 128
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 104
        movdqa  xmm0, XMMWORD PTR .LC1[rip]
        mov     QWORD PTR [rsp+64], OFFSET FLAT:.LC2
        lea     rax, [rsp+32]
        mov     QWORD PTR [rsp+72], OFFSET FLAT:"mul_ijk()"
        mov     QWORD PTR [rsp+80], OFFSET FLAT:.LC3
        mov     QWORD PTR [rsp+88], OFFSET FLAT:"mul_ikj()"
        mov     QWORD PTR [rsp+8], rax
        movups  XMMWORD PTR [rsp+36], xmm0
.L37:
        movsxd  rbx, r15d
        mov     DWORD PTR "n"[rip], r15d
        lea     rbp, [0+rbx*8]
        mov     rdi, rbp
        call    "malloc"
        mov     rdi, rbp
        mov     QWORD PTR [rsp], rax
        mov     QWORD PTR "a"[rip], rax
        call    "malloc"
        mov     rdi, rbp
        mov     QWORD PTR "b"[rip], rax
        mov     r13, rax
        call    "malloc"
        mov     QWORD PTR "c"[rip], rax
        mov     r14, rax
        test    r15d, r15d
        jle     .L25
        xor     r12d, r12d
.L27:
        lea     rdi, [0+rbx*8]
        lea     rbp, [0+r12*8]
        call    "malloc"
        mov     rcx, QWORD PTR [rsp]
        lea     rdi, [0+rbx*8]
        mov     QWORD PTR [rcx+r12*8], rax
        call    "malloc"
        lea     rdi, [0+rbx*8]
        mov     QWORD PTR [r13+0+r12*8], rax
        call    "malloc"
        mov     QWORD PTR [r14+r12*8], rax
        test    r15d, r15d
        jle     .L25
        xor     ebx, ebx
.L26:
        call    "rand"
        pxor    xmm0, xmm0
        mov     edx, eax
        mov     rax, QWORD PTR "a"[rip]
        cvtsi2sd        xmm0, edx
        divsd   xmm0, QWORD PTR .LC4[rip]
        mov     rax, QWORD PTR [rax+rbp]
        movsd   QWORD PTR [rax+rbx*8], xmm0
        call    "rand"
        mov     r13, QWORD PTR "b"[rip]
        pxor    xmm0, xmm0
        mov     r15d, DWORD PTR "n"[rip]
        cvtsi2sd        xmm0, eax
        divsd   xmm0, QWORD PTR .LC4[rip]
        mov     rdx, QWORD PTR [r13+0+rbp]
        movsd   QWORD PTR [rdx+rbx*8], xmm0
        add     rbx, 1
        cmp     r15d, ebx
        jg      .L26
        add     r12, 1
        cmp     r15d, r12d
        jle     .L25
        mov     rax, QWORD PTR "a"[rip]
        mov     r14, QWORD PTR "c"[rip]
        movsxd  rbx, r15d
        mov     QWORD PTR [rsp], rax
        jmp     .L27
.L25:
        lea     r13, [rsp+64]
.L28:
        mov     r12d, 1
.L33:
        test    r15d, r15d
        jle     .L31
        mov     r14, QWORD PTR "c"[rip]
        mov     edx, r15d
        lea     rbx, [0+rdx*8]
        lea     rbp, [rbx+r14]
.L29:
        mov     rdi, QWORD PTR [r14]
        mov     rdx, rbx
        xor     esi, esi
        add     r14, 8
        call    "memset"
        cmp     rbp, r14
        jne     .L29
.L31:
        lea     rsi, [rsp+16]
        mov     edi, 1
        call    "clock_gettime"
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, QWORD PTR [rsp+24]
        pxor    xmm1, xmm1
        mulsd   xmm0, QWORD PTR .LC5[rip]
        cvtsi2sd        xmm1, QWORD PTR [rsp+16]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rsp], xmm0
        call    [QWORD PTR [r13+8]]
        lea     rsi, [rsp+16]
        mov     edi, 1
        call    "clock_gettime"
        pxor    xmm0, xmm0
        pxor    xmm2, xmm2
        mov     ecx, r12d
        cvtsi2sd        xmm0, QWORD PTR [rsp+24]
        pxor    xmm1, xmm1
        mov     esi, DWORD PTR "n"[rip]
        cvtsi2sd        xmm1, QWORD PTR [rsp+16]
        mulsd   xmm0, QWORD PTR .LC5[rip]
        mov     rax, QWORD PTR "c"[rip]
        mov     edi, OFFSET FLAT:.LC7
        add     r12d, 1
        cvtsi2sd        xmm2, esi
        mov     rdx, QWORD PTR [r13+0]
        mov     rax, QWORD PTR [rax+56]
        addsd   xmm0, xmm1
        movapd  xmm1, xmm2
        subsd   xmm0, QWORD PTR [rsp]
        addsd   xmm1, xmm2
        mulsd   xmm1, xmm2
        mulsd   xmm1, xmm2
        movsd   xmm2, QWORD PTR [rax+56]
        mov     eax, 3
        divsd   xmm1, xmm0
        divsd   xmm1, QWORD PTR .LC6[rip]
        call    "printf"
        mov     r15d, DWORD PTR "n"[rip]
        cmp     r12d, 6
        jne     .L33
        add     r13, 16
        lea     rax, [rsp+96]
        cmp     r13, rax
        jne     .L28
        test    r15d, r15d
        jle     .L34
        mov     edx, r15d
        xor     ebp, ebp
        lea     rbx, [0+rdx*8]
.L35:
        mov     rax, QWORD PTR "a"[rip]
        mov     rdi, QWORD PTR [rax+rbp]
        call    "free"
        mov     rax, QWORD PTR "b"[rip]
        mov     rdi, QWORD PTR [rax+rbp]
        call    "free"
        mov     rax, QWORD PTR "c"[rip]
        mov     rdi, QWORD PTR [rax+rbp]
        add     rbp, 8
        call    "free"
        cmp     rbp, rbx
        jne     .L35
.L34:
        mov     rdi, QWORD PTR "a"[rip]
        call    "free"
        mov     rdi, QWORD PTR "b"[rip]
        call    "free"
        mov     rdi, QWORD PTR "c"[rip]
        call    "free"
        add     QWORD PTR [rsp+8], 4
        mov     rax, QWORD PTR [rsp+8]
        lea     rcx, [rsp+52]
        cmp     rax, rcx
        je      .L36
        mov     r15d, DWORD PTR [rax]
        jmp     .L37
.L36:
        add     rsp, 104
        xor     eax, eax
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
"c":
        .zero   8
"b":
        .zero   8
"a":
        .zero   8
.LC1:
        .long   256
        .long   384
        .long   512
        .long   1024
.LC4:
        .long   -4194304
        .long   1105199103
.LC5:
        .long   -400107883
        .long   1041313291
.LC6:
        .long   0
        .long   1104006501