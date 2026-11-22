"strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)":
        sub     rsp, 392
        mov     QWORD PTR [rsp+352], rbp
        mov     ebp, DWORD PTR [rsp+400]
        mov     QWORD PTR [rsp+384], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+200], rdi
        mov     DWORD PTR [rsp+176], esi
        mov     QWORD PTR [rsp+24], rdx
        mov     DWORD PTR [rsp+32], ecx
        mov     QWORD PTR [rsp+112], r8
        cmp     ebp, 64
        jle     .L243
        sar     ebp
        mov     QWORD PTR [rsp+344], rbx
        mov     r9, rdx
        mov     edi, ebp
        mov     QWORD PTR [rsp+360], r12
        lea     rbx, [0+rdi*8]
        mov     QWORD PTR [rsp+376], r14
        movsxd  r14, DWORD PTR [rsp+408]
        lea     rax, [rdx+rbx]
        mov     QWORD PTR [rsp+272], rdi
        mov     QWORD PTR [rsp+144], rax
        mov     eax, ecx
        imul    eax, ebp
        mov     QWORD PTR [rsp+264], r14
        mov     QWORD PTR [rsp+368], r13
        xor     r13d, r13d
        mov     DWORD PTR [rsp+48], 0
        cdqe
        mov     DWORD PTR [rsp+40], 0
        lea     r12, [0+rax*8]
        add     rax, rdi
        lea     rsi, [rdx+r12]
        lea     r8, [0+rax*8]
        mov     QWORD PTR [rsp+72], r12
        mov     QWORD PTR [rsp+160], rsi
        mov     rsi, QWORD PTR [rsp+112]
        lea     r10, [rdx+r8]
        mov     QWORD PTR [rsp+104], r10
        lea     rax, [rsi+rbx]
        mov     QWORD PTR [rsp+152], rax
        mov     eax, ebp
        imul    eax, r15d
        cdqe
        lea     rdx, [0+rax*8]
        add     rax, rdi
        sal     rax, 3
        mov     QWORD PTR [rsp+64], rdx
        add     rdx, rsi
        mov     QWORD PTR [rsp+56], rax
        add     rax, rsi
        mov     rsi, r14
        mov     QWORD PTR [rsp+96], rax
        mov     eax, DWORD PTR [rsp+176]
        sal     rsi, 23
        mov     QWORD PTR [rsp+168], rdx
        lea     rdx, "tmp_A"[rsi]
        imul    eax, ebp
        mov     QWORD PTR [rsp+192], rdx
        mov     r11, rdx
        cdqe
        mov     QWORD PTR [rsp+224], rax
        add     rax, rdi
        mov     QWORD PTR [rsp+232], rax
        lea     rax, "tmp_B"[rsi]
        mov     QWORD PTR [rsp+184], rax
        imul    rax, r14, 14680064
        sal     r14, 20
        mov     QWORD PTR [rsp+248], r14
        xor     r14d, r14d
        mov     QWORD PTR [rsp+296], rax
        add     rax, OFFSET FLAT:"tmp_M"
        mov     QWORD PTR [rsp+120], rax
        movsxd  rax, ecx
        sub     rdi, rax
        lea     rcx, [0+rax*8]
        lea     rax, [0+rdi*8]
        mov     QWORD PTR [rsp+88], rcx
        mov     rcx, rdx
        mov     rdx, r9
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"-8
        sub     rax, r9
        mov     QWORD PTR [rsp+208], rax
        add     rax, rsi
        mov     QWORD PTR [rsp+312], rax
        mov     r9, rax
        mov     eax, ebp
        shr     eax
        sub     r9, rbx
        mov     edi, eax
        add     eax, eax
        sub     r9, r12
        xor     r12d, r12d
        mov     DWORD PTR [rsp+80], eax
        mov     rax, r8
        sal     rdi, 4
        add     rax, r9
        mov     QWORD PTR [rsp+128], rsi
        mov     DWORD PTR [rsp+136], r15d
        mov     r15, QWORD PTR [rsp+88]
        mov     QWORD PTR [rsp+8], rdi
        je      .L126
.L245:
        mov     rdi, QWORD PTR [rsp+8]
        lea     rsi, [r8+rdx]
        xor     eax, eax
        test    r9, r9
        je      .L126
.L15:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L15
        mov     esi, DWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+8], rdi
        cmp     esi, ebp
        je      .L13
        mov     eax, DWORD PTR [rsp+40]
        add     eax, esi
        movsxd  rdi, eax
        mov     eax, DWORD PTR [rsp+48]
        add     esi, eax
        mov     rax, QWORD PTR [rsp+24]
        mov     esi, esi
        movsd   xmm0, QWORD PTR [rax+rdi*8]
        mov     rax, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rax+rdi*8]
        mov     rax, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L13:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L244
.L17:
        add     r9, QWORD PTR [rsp+16]
        mov     rax, r8
        add     r13d, DWORD PTR [rsp+32]
        add     r14d, ebp
        add     rdx, r15
        add     r10, r15
        add     r11, rbx
        add     rcx, rbx
        add     rax, r9
        mov     DWORD PTR [rsp+40], r13d
        mov     DWORD PTR [rsp+48], r14d
        jne     .L245
.L126:
        mov     rdi, QWORD PTR [rsp+8]
        xor     eax, eax
.L14:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r11+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L14
        add     r12d, 1
        mov     QWORD PTR [rsp+8], rdi
        cmp     ebp, r12d
        jne     .L17
.L244:
        mov     r14d, ebp
        mov     r9, QWORD PTR [rsp+96]
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+136]
        mov     rdx, QWORD PTR [rsp+272]
        shr     r14d
        xor     r11d, r11d
        mov     rsi, QWORD PTR [rsp+128]
        mov     edi, r14d
        add     r14d, r14d
        sub     rdx, rax
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+112]
        mov     QWORD PTR [rsp+80], rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"-8
        mov     rcx, QWORD PTR [rsp+184]
        sub     rax, rdx
        mov     DWORD PTR [rsp+40], r15d
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+240], rax
        add     rax, rsi
        mov     r10, rcx
        mov     QWORD PTR [rsp+304], rax
        mov     r8, rax
        sub     r8, rbx
        sub     r8, QWORD PTR [rsp+64]
.L18:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, r8
        je      .L127
        mov     rax, QWORD PTR [rsp+56]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L127
.L23:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L23
        cmp     r14d, ebp
        je      .L21
        mov     rsi, QWORD PTR [rsp+112]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+96]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L21:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+40]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L18
        mov     rax, QWORD PTR [rsp+112]
        mov     r9d, ebp
        mov     ecx, ebp
        mov     esi, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+24]
        mov     QWORD PTR [rsp+128], rax
        mov     eax, DWORD PTR [rsp+176]
        mov     DWORD PTR [rsp+48], eax
        mov     rax, QWORD PTR [rsp+200]
        mov     QWORD PTR [rsp+56], rax
        mov     eax, DWORD PTR [rsp+408]
        add     eax, 1
        mov     DWORD PTR [rsp+220], eax
        push    rax
        push    rbp
        mov     r15, QWORD PTR [rsp+208]
        mov     r8, QWORD PTR [rsp+200]
        mov     rdi, QWORD PTR [rsp+136]
        mov     rdx, r15
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     eax, ebp
        xor     r10d, r10d
        xor     r9d, r9d
        imul    eax, ebp
        mov     ecx, eax
        mov     DWORD PTR [rsp+304], eax
        pop     r11
        xor     r11d, r11d
        pop     r12
        lea     rax, [0+rcx*8]
        mov     r12d, ebp
        mov     rdx, QWORD PTR [rsp+160]
        lea     r8, [r15+rax]
        mov     QWORD PTR [rsp+24], rax
        shr     r12d
        mov     rax, QWORD PTR [rsp+248]
        mov     QWORD PTR [rsp+200], r8
        mov     esi, r12d
        add     r12d, r12d
        add     rax, rcx
        mov     QWORD PTR [rsp+112], rcx
        sal     rsi, 4
        lea     r15, [0+rax*8]
        mov     rax, QWORD PTR [rsp+208]
        mov     QWORD PTR [rsp+176], r15
        lea     rcx, "tmp_A"[r15]
        sub     rax, rbx
        mov     QWORD PTR [rsp+320], rax
        lea     rdi, [rax+r15]
        sub     rdi, QWORD PTR [rsp+72]
.L28:
        mov     rax, rbx
        add     rax, rdi
        je      .L128
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L128
.L31:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L31
        cmp     r12d, ebp
        je      .L29
        mov     r15, QWORD PTR [rsp+160]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+200]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L29:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L28
        mov     r14, QWORD PTR [rsp+24]
        mov     rax, QWORD PTR [rsp+120]
        mov     esi, ebp
        mov     r12d, ebp
        mov     ecx, DWORD PTR [rsp+220]
        mov     r15, QWORD PTR [rsp+176]
        shr     r12d
        xor     r13d, r13d
        add     rax, r14
        mov     QWORD PTR [rsp+280], rax
        mov     rdi, rax
        push    rcx
        mov     ecx, ebp
        push    rbp
        mov     r8, QWORD PTR [rsp+152]
        mov     rdx, QWORD PTR [rsp+216]
        mov     r9d, DWORD PTR [rsp+56]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rax, QWORD PTR [rsp+200]
        mov     esi, r12d
        mov     rdi, QWORD PTR [rsp+256]
        mov     rdx, QWORD PTR [rsp+168]
        xor     r11d, r11d
        sal     rsi, 4
        add     r12d, r12d
        lea     r8, [rax+r14]
        sub     rdi, rbx
        lea     rcx, "tmp_B"[r15]
        mov     QWORD PTR [rsp+192], r8
        add     rdi, r15
        sub     rdi, QWORD PTR [rsp+80]
        pop     r9
        xor     r9d, r9d
        pop     r10
        xor     r10d, r10d
.L36:
        mov     rax, QWORD PTR [rsp+64]
        add     rax, rdi
        je      .L129
        mov     rax, QWORD PTR [rsp+64]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L129
.L39:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L39
        cmp     r12d, ebp
        je      .L37
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+96]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L37:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+40]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L36
        mov     eax, DWORD PTR [rsp+288]
        mov     r9d, ebp
        mov     esi, ebp
        xor     r13d, r13d
        mov     r12, QWORD PTR [rsp+24]
        add     eax, eax
        mov     DWORD PTR [rsp+292], eax
        mov     QWORD PTR [rsp+248], rax
        mov     rax, QWORD PTR [rsp+280]
        lea     r15, [rax+r12]
        mov     eax, DWORD PTR [rsp+220]
        mov     rdi, r15
        push    rax
        push    rbp
        mov     r14, QWORD PTR [rsp+192]
        mov     ecx, DWORD PTR [rsp+48]
        mov     rdx, QWORD PTR [rsp+144]
        mov     r8, r14
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rax, QWORD PTR [rsp+280]
        lea     r10, [r14+r12]
        mov     r14d, ebp
        mov     r8, QWORD PTR [rsp+256]
        shr     r14d
        xor     r12d, r12d
        xor     r11d, r11d
        sal     rax, 19
        add     rax, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+224], r10
        mov     edi, r14d
        sal     rax, 4
        sal     rdi, 4
        add     r14d, r14d
        add     r8, rax
        sub     r8, QWORD PTR [rsp+80]
        lea     rcx, "tmp_B"[rax]
        pop     rdx
        pop     rsi
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+176], rax
        mov     r9, QWORD PTR [rsp+168]
        mov     QWORD PTR [rsp+240], r15
        mov     r15, QWORD PTR [rsp+80]
.L44:
        mov     rax, QWORD PTR [rsp+64]
        add     rax, r8
        je      .L130
        mov     rax, QWORD PTR [rsp+64]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L130
.L47:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L47
        cmp     r14d, ebp
        je      .L45
        mov     rsi, QWORD PTR [rsp+168]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+208]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L45:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+40]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L44
        mov     rax, QWORD PTR [rsp+176]
        mov     r9d, ebp
        mov     esi, ebp
        xor     r12d, r12d
        mov     r15, QWORD PTR [rsp+240]
        mov     r14, QWORD PTR [rsp+24]
        mov     QWORD PTR [rsp+328], rax
        mov     eax, DWORD PTR [rsp+292]
        add     eax, DWORD PTR [rsp+288]
        mov     ecx, DWORD PTR [rsp+220]
        mov     QWORD PTR [rsp+176], rax
        sal     rax, 3
        mov     QWORD PTR [rsp+256], rax
        lea     rax, [r14+r15]
        mov     QWORD PTR [rsp+240], rax
        mov     rdi, rax
        push    rcx
        push    rbp
        mov     r8, QWORD PTR [rsp+224]
        mov     ecx, DWORD PTR [rsp+48]
        mov     rdx, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     r15, QWORD PTR [rsp+216]
        mov     rax, QWORD PTR [rsp+344]
        xor     r11d, r11d
        mov     r8, QWORD PTR [rsp+336]
        pop     r13
        xor     r13d, r13d
        add     r15, r14
        pop     r14
        mov     r14d, ebp
        mov     r9, QWORD PTR [rsp+144]
        shr     r14d
        mov     r10, r15
        lea     rcx, "tmp_A"[rax]
        add     r8, rax
        mov     edi, r14d
        mov     QWORD PTR [rsp+200], r15
        mov     r15, QWORD PTR [rsp+88]
        add     r14d, r14d
        mov     rdx, QWORD PTR [rsp+128]
        sal     rdi, 4
.L52:
        mov     rax, rbx
        add     rax, r8
        je      .L131
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L131
.L55:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L55
        cmp     r14d, ebp
        je      .L53
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+200]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L53:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L52
        mov     r14, QWORD PTR [rsp+24]
        mov     rax, QWORD PTR [rsp+240]
        mov     esi, ebp
        mov     ecx, DWORD PTR [rsp+220]
        mov     r15, QWORD PTR [rsp+200]
        add     rax, r14
        mov     QWORD PTR [rsp+320], rax
        mov     rdx, r15
        mov     rdi, rax
        push    rcx
        mov     ecx, ebp
        push    rbp
        mov     r9d, DWORD PTR [rsp+56]
        mov     r8, QWORD PTR [rsp+112]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rcx, QWORD PTR [rsp+272]
        lea     r9, [r14+r15]
        mov     r15d, ebp
        mov     QWORD PTR [rsp+256], r9
        shr     r15d
        xor     r14d, r14d
        mov     rax, QWORD PTR [rsp+328]
        mov     r13, QWORD PTR [rsp+208]
        mov     QWORD PTR [rsp+216], r9
        mov     edi, r15d
        add     r15d, r15d
        add     rax, rcx
        mov     r10, QWORD PTR [rsp+176]
        sal     rdi, 4
        add     r13, rcx
        mov     QWORD PTR [rsp+328], rax
        mov     r8, rax
        sub     r8, QWORD PTR [rsp+88]
        pop     r11
        pop     r12
        mov     rcx, r13
        xor     r12d, r12d
        mov     QWORD PTR [rsp+192], r13
        mov     rdx, QWORD PTR [rsp+128]
        xor     r11d, r11d
        mov     r13, QWORD PTR [rsp+88]
.L60:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L132
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L132
.L63:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L63
        cmp     r15d, ebp
        je      .L61
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+240]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L61:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L60
        mov     rcx, QWORD PTR [rsp+256]
        mov     rax, QWORD PTR [rsp+304]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     r12, QWORD PTR [rsp+184]
        mov     r13, QWORD PTR [rsp+192]
        xor     r11d, r11d
        add     rax, rcx
        mov     r9, QWORD PTR [rsp+208]
        add     r9, QWORD PTR [rsp+24]
        sub     rax, rbx
        add     r12, rcx
        mov     QWORD PTR [rsp+128], r9
        mov     r10, QWORD PTR [rsp+152]
        mov     QWORD PTR [rsp+192], rax
        mov     r8, rax
        mov     eax, ebp
        mov     rcx, r12
        shr     eax
        mov     QWORD PTR [rsp+160], r9
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+208], r12
        mov     edi, eax
        mov     r12, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+184], r13
        sal     rdi, 4
        lea     r13d, [rax+rax]
.L68:
        mov     rax, rbx
        add     rax, r8
        je      .L133
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L133
.L71:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L71
        cmp     r13d, ebp
        je      .L69
        mov     rsi, QWORD PTR [rsp+136]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+152]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L69:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+40]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L68
        mov     eax, DWORD PTR [rsp+288]
        mov     r9d, ebp
        mov     ecx, ebp
        mov     esi, ebp
        mov     r12, QWORD PTR [rsp+208]
        mov     r15, QWORD PTR [rsp+320]
        lea     eax, [rax+rax*4]
        add     r15, QWORD PTR [rsp+24]
        mov     r13, QWORD PTR [rsp+184]
        mov     QWORD PTR [rsp+136], rax
        mov     eax, DWORD PTR [rsp+220]
        mov     rdi, r15
        push    rax
        push    rbp
        mov     r14, QWORD PTR [rsp+256]
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, r14
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+328]
        mov     rdx, QWORD PTR [rsp+160]
        shr     r10d
        mov     ecx, r10d
        add     r10d, r10d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rdi
        sal     rcx, 4
        pop     r8
        xor     edi, edi
        xor     r8d, r8d
        mov     QWORD PTR [rsp+184], r15
        mov     QWORD PTR [rsp+152], r12
        mov     r12, r14
.L76:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L134
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L134
.L79:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L79
        cmp     r10d, ebp
        je      .L77
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+200]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L77:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L76
        mov     r15, QWORD PTR [rsp+184]
        mov     r10d, ebp
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        mov     r12, QWORD PTR [rsp+152]
        mov     rdx, QWORD PTR [rsp+168]
        xor     r9d, r9d
        mov     QWORD PTR [rsp+16], r15
        mov     ecx, r10d
        xor     r8d, r8d
        mov     r13, QWORD PTR [rsp+128]
        mov     rsi, QWORD PTR [rsp+192]
        sal     rcx, 4
        add     r10d, r10d
        sub     rsi, QWORD PTR [rsp+64]
.L81:
        mov     rax, rbx
        add     rax, rsi
        je      .L135
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L135
.L86:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L86
        cmp     r10d, ebp
        je      .L84
        mov     r15, QWORD PTR [rsp+96]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+168]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+160]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L84:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+40]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L81
        mov     eax, DWORD PTR [rsp+292]
        mov     r15, QWORD PTR [rsp+16]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+288]
        mov     r9d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        mov     eax, eax
        mov     QWORD PTR [rsp+104], rax
        lea     r14, [0+rax*8]
        mov     rax, QWORD PTR [rsp+24]
        mov     QWORD PTR [rsp+144], r14
        lea     rdi, [rax+r15]
        mov     eax, DWORD PTR [rsp+220]
        push    rax
        push    rbp
        mov     rdx, QWORD PTR [rsp+216]
        mov     r8, QWORD PTR [rsp+176]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        movsxd  rax, DWORD PTR [rsp+64]
        mov     rdi, QWORD PTR [rsp+136]
        xor     r10d, r10d
        lea     rcx, [0+rax*8]
        mov     QWORD PTR [rsp+88], rdi
        mov     rdx, rdi
        sub     rax, QWORD PTR [rsp+288]
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+72]
        sal     rax, 3
        mov     QWORD PTR [rsp+32], rax
        lea     rax, [rcx-8]
        sub     rax, QWORD PTR [rsp+312]
        mov     QWORD PTR [rsp+144], rax
        mov     r11, rax
        imul    rax, QWORD PTR [rsp+280], 1835008
        sub     r11, r14
        mov     QWORD PTR [rsp+168], rax
        mov     rax, QWORD PTR [rsp+128]
        mov     r15, rax
        sal     rax, 5
        mov     r14, rax
        pop     rax
        mov     eax, ebp
        pop     rsi
        shr     eax
        sal     r15, 4
        mov     QWORD PTR [rsp+80], rdi
        mov     r9d, eax
        add     eax, eax
        mov     QWORD PTR [rsp+88], r15
        mov     r15, QWORD PTR [rsp+256]
        mov     DWORD PTR [rsp+40], 0
        sal     r9, 4
        mov     DWORD PTR [rsp+32], 0
        mov     DWORD PTR [rsp+96], eax
        mov     QWORD PTR [rsp+64], rbx
        mov     rbx, rdi
.L91:
        lea     rsi, [r15+r11]
        mov     rax, rsi
        sub     rax, QWORD PTR [rsp+24]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r11
        setne   dil
        test    sil, dil
        je      .L100
        add     rax, r14
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L100
        mov     rax, QWORD PTR [rsp+24]
        lea     rdi, [r15+rdx]
        lea     rsi, [rax+rdi]
        mov     rax, QWORD PTR [rsp+88]
        lea     r8, [rsi+rax]
        xor     eax, eax
.L94:
        movupd  xmm0, XMMWORD PTR [rdi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [r8+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L94
        mov     r8d, DWORD PTR [rsp+96]
        cmp     r8d, ebp
        je      .L92
        mov     eax, DWORD PTR [rsp+32]
        mov     rdi, QWORD PTR [rsp+176]
        add     eax, r8d
        mov     eax, eax
        lea     rsi, [rdi+rax]
        mov     edi, DWORD PTR [rsp+40]
        movsd   xmm0, QWORD PTR [rbx+rsi*8]
        add     rsi, QWORD PTR [rsp+112]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        add     rax, QWORD PTR [rsp+104]
        add     edi, r8d
        subsd   xmm0, QWORD PTR [rbx+rsi*8]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        movsxd  rdi, edi
        mov     rax, QWORD PTR [rsp+56]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L92:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L246
.L96:
        mov     rdi, QWORD PTR [rsp+64]
        add     r10d, ebp
        add     r13d, DWORD PTR [rsp+48]
        add     rcx, QWORD PTR [rsp+8]
        add     r11, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+32], r10d
        add     QWORD PTR [rsp+80], rdi
        add     rdx, rdi
        mov     DWORD PTR [rsp+40], r13d
        jmp     .L91
.L100:
        mov     rdi, QWORD PTR [rsp+64]
        mov     rax, QWORD PTR [rsp+80]
        mov     rsi, rcx
        mov     r8, QWORD PTR [rsp+144]
        add     rdi, rax
.L93:
        movsd   xmm0, QWORD PTR [rax+r15]
        addsd   xmm0, QWORD PTR [rax]
        add     rax, 8
        add     rsi, 8
        subsd   xmm0, QWORD PTR [rax-8+r14]
        addsd   xmm0, QWORD PTR [rax-8+r8]
        movsd   QWORD PTR [rsi-8], xmm0
        cmp     rdi, rax
        jne     .L93
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L96
.L246:
        mov     rax, QWORD PTR [rsp+120]
        mov     r15, QWORD PTR [rsp+88]
        mov     r12d, ebp
        xor     r11d, r11d
        mov     rbx, QWORD PTR [rsp+64]
        shr     r12d
        xor     r10d, r10d
        xor     r8d, r8d
        lea     rdi, [rax+r15]
        mov     rax, QWORD PTR [rsp+56]
        mov     ecx, r12d
        add     r12d, r12d
        sal     rcx, 4
        lea     rdx, [rax+rbx]
        mov     rax, QWORD PTR [rsp+128]
        lea     rsi, [rbx+rax]
        imul    rax, QWORD PTR [rsp+264], 917504
        sub     rsi, r14
        add     rax, QWORD PTR [rsp+112]
        sal     rax, 4
        add     rax, OFFSET FLAT:"tmp_M"
.L97:
        lea     r9, [r15+rsi]
        cmp     r9, OFFSET FLAT:"tmp_M"
        je      .L108
        lea     r13, [r15+rax]
        xor     r9d, r9d
        cmp     rsi, OFFSET FLAT:"tmp_M"
        je      .L108
.L103:
        movupd  xmm0, XMMWORD PTR [r13+0+r9]
        movupd  xmm5, XMMWORD PTR [rax+r9]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+r9], xmm0
        add     r9, 16
        cmp     rcx, r9
        jne     .L103
        cmp     r12d, ebp
        je      .L101
        mov     r14, QWORD PTR [rsp+248]
        lea     r9d, [r10+r12]
        lea     r13d, [r11+r12]
        movsxd  r13, r13d
        add     r9, r14
        mov     QWORD PTR [rsp+32], r9
        mov     r9, QWORD PTR [rsp+56]
        add     r14, QWORD PTR [rsp+32]
        lea     r13, [r9+r13*8]
        mov     r9, QWORD PTR [rsp+120]
        movsd   xmm0, QWORD PTR [r9+r14*8]
        mov     r14, QWORD PTR [rsp+32]
        addsd   xmm0, QWORD PTR [r9+r14*8]
        movsd   QWORD PTR [r13+0+rbx], xmm0
.L101:
        add     r8d, 1
        add     r10d, ebp
        add     rdi, rbx
        add     r11d, DWORD PTR [rsp+48]
        add     rdx, QWORD PTR [rsp+8]
        add     rsi, QWORD PTR [rsp+16]
        add     rax, rbx
        cmp     ebp, r8d
        jne     .L97
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        xor     r11d, r11d
        mov     rax, QWORD PTR [rsp+224]
        mov     rcx, QWORD PTR [rsp+128]
        shr     r14d
        mov     esi, r14d
        mov     r8, QWORD PTR [rsp+280]
        add     r14d, r14d
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rsp+56]
        sal     rsi, 4
        lea     rdi, [rcx+rdx]
        sub     rdi, QWORD PTR [rsp+256]
        add     rax, rdx
        mov     rdx, QWORD PTR [rsp+152]
        add     rdx, QWORD PTR [rsp+112]
        lea     rdx, "tmp_M"[0+rdx*8]
        mov     QWORD PTR [rsp+40], rdx
        mov     rcx, rdx
.L113:
        lea     rdx, [rdi+r15]
        cmp     rdx, OFFSET FLAT:"tmp_M"
        je      .L117
        lea     r9, [r15+rcx]
        xor     edx, edx
        cmp     rdi, OFFSET FLAT:"tmp_M"
        je      .L117
.L111:
        movupd  xmm0, XMMWORD PTR [r9+rdx]
        movupd  xmm6, XMMWORD PTR [rcx+rdx]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rax+rdx], xmm0
        add     rdx, 16
        cmp     rdx, rsi
        jne     .L111
        cmp     r14d, ebp
        je      .L109
        mov     r10, QWORD PTR [rsp+224]
        lea     r9d, [r13+0+r14]
        lea     edx, [r12+r14]
        movsxd  r9, r9d
        add     r10, r9
        mov     r9, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+32], r10
        mov     r10, QWORD PTR [rsp+176]
        add     r10, rdx
        add     rdx, QWORD PTR [rsp+112]
        movsd   xmm0, QWORD PTR [r9+r10*8]
        addsd   xmm0, QWORD PTR [r9+rdx*8]
        mov     r10, QWORD PTR [rsp+32]
        mov     rdx, QWORD PTR [rsp+56]
        movsd   QWORD PTR [rdx+r10*8], xmm0
.L109:
        add     r11d, 1
        add     r12d, ebp
        add     r8, rbx
        add     r13d, DWORD PTR [rsp+48]
        add     rax, QWORD PTR [rsp+8]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L113
        mov     rdi, QWORD PTR [rsp+112]
        mov     rcx, QWORD PTR [rsp+56]
        xor     r13d, r13d
        xor     r11d, r11d
        mov     rax, QWORD PTR [rsp+232]
        mov     rdx, QWORD PTR [rsp+40]
        xor     r12d, r12d
        mov     DWORD PTR [rsp+40], 0
        mov     r10, QWORD PTR [rsp+128]
        mov     DWORD PTR [rsp+64], 0
        sal     rax, 3
        mov     QWORD PTR [rsp+112], r15
        mov     r15, QWORD PTR [rsp+120]
        add     r10, rax
        add     rcx, rax
        mov     rax, rdi
        sub     r10, QWORD PTR [rsp+24]
        neg     rax
        mov     rsi, rax
        sal     rax, 3
        mov     QWORD PTR [rsp+88], rax
        lea     rax, [rdi+rdi*4]
        sal     rsi, 5
        sal     rax, 3
        mov     QWORD PTR [rsp+80], rsi
        mov     QWORD PTR [rsp+104], rax
        lea     rax, [rdi+rdi*2]
        lea     r14, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+32], r14
        mov     r14, rdi
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+96], eax
        sal     r9, 4
.L114:
        mov     rax, QWORD PTR [rsp+80]
        mov     rdi, QWORD PTR [rsp+32]
        add     rax, r10
        lea     rsi, [rax+rdi]
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   sil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   al
        and     eax, esi
        cmp     rdi, r10
        setne   sil
        test    al, sil
        je      .L124
        mov     rax, QWORD PTR [rsp+24]
        add     rax, r10
        cmp     rax, rdi
        je      .L124
        mov     rax, QWORD PTR [rsp+88]
        lea     r8, [rax+rdx]
        mov     rax, QWORD PTR [rsp+24]
        lea     rsi, [rax+rdx]
        mov     rax, QWORD PTR [rsp+32]
        lea     rdi, [rsi+rax]
        xor     eax, eax
.L120:
        movupd  xmm0, XMMWORD PTR [r8+rax]
        movupd  xmm7, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [rdi+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L120
        mov     r8d, DWORD PTR [rsp+96]
        cmp     r8d, ebp
        je      .L118
        mov     eax, DWORD PTR [rsp+64]
        mov     edi, DWORD PTR [rsp+40]
        add     eax, r8d
        add     edi, r8d
        mov     eax, eax
        movsxd  rdi, edi
        add     rdi, QWORD PTR [rsp+232]
        lea     rsi, [r14+rax]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        add     rax, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [r15+rsi*8]
        add     rsi, r14
        addsd   xmm0, QWORD PTR [r15+rsi*8]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+56]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L118:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L241
.L247:
        add     r11d, ebp
        add     r13d, DWORD PTR [rsp+48]
        add     QWORD PTR [rsp+72], rbx
        add     rdx, rbx
        add     rcx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+64], r11d
        mov     DWORD PTR [rsp+40], r13d
        jmp     .L114
.L124:
        mov     rax, QWORD PTR [rsp+72]
        mov     r8, QWORD PTR [rsp+112]
        mov     DWORD PTR [rsp+40], ebp
        mov     rsi, rcx
        mov     rbp, QWORD PTR [rsp+104]
        lea     rdi, [rbx+rax]
.L119:
        movsd   xmm0, QWORD PTR [rax]
        subsd   xmm0, QWORD PTR [rax+r14*8]
        add     rax, 8
        add     rsi, 8
        addsd   xmm0, QWORD PTR [rax-8+r8]
        addsd   xmm0, QWORD PTR [rax-8+rbp]
        movsd   QWORD PTR [rsi-8], xmm0
        cmp     rdi, rax
        jne     .L119
        mov     ebp, DWORD PTR [rsp+40]
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L247
.L241:
        mov     rbx, QWORD PTR [rsp+344]
        mov     r12, QWORD PTR [rsp+360]
        mov     r13, QWORD PTR [rsp+368]
        mov     r14, QWORD PTR [rsp+376]
.L1:
        mov     rbp, QWORD PTR [rsp+352]
        mov     r15, QWORD PTR [rsp+384]
        add     rsp, 392
        ret
.L117:
        lea     r9, [r8+r15]
        xor     edx, edx
.L110:
        movsd   xmm0, QWORD PTR [r9+rdx]
        addsd   xmm0, QWORD PTR [r8+rdx]
        movsd   QWORD PTR [rax+rdx], xmm0
        add     rdx, 8
        cmp     rbx, rdx
        jne     .L110
        jmp     .L109
.L108:
        lea     r13, [r15+rdi]
        xor     r9d, r9d
.L102:
        movsd   xmm0, QWORD PTR [r13+0+r9]
        addsd   xmm0, QWORD PTR [rdi+r9]
        movsd   QWORD PTR [rdx+r9], xmm0
        add     r9, 8
        cmp     rbx, r9
        jne     .L102
        jmp     .L101
.L135:
        mov     r15, QWORD PTR [rsp+96]
        mov     r14, QWORD PTR [rsp+168]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L85:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L85
        jmp     .L84
.L134:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L78:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L78
        jmp     .L77
.L133:
        xor     eax, eax
.L70:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L70
        jmp     .L69
.L132:
        xor     eax, eax
.L62:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L62
        jmp     .L61
.L131:
        xor     eax, eax
.L54:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L54
        jmp     .L53
.L130:
        xor     eax, eax
.L46:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L46
        jmp     .L45
.L129:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+96]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L38:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L38
        jmp     .L37
.L128:
        mov     r15, QWORD PTR [rsp+160]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L30:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L30
        jmp     .L29
.L127:
        xor     eax, eax
.L22:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L22
        jmp     .L21
.L243:
        test    ebp, ebp
        jle     .L1
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+376], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+40], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+360], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+344], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+368], r13
        mov     r13d, ebp
.L4:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L6:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L125
.L10:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L8:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L8
        cmp     r11d, ebp
        je      .L5
        mov     eax, r11d
.L11:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+24]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L6
.L225:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+56]
        add     edx, DWORD PTR [rsp+32]
        add     rbx, QWORD PTR [rsp+40]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L4
        jmp     .L241
.L5:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L225
        add     r10, 8
        mov     r15d, r9d
        jmp     .L10
.L125:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L11
"strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)":
        sub     rsp, 344
        mov     QWORD PTR [rsp+304], rbp
        mov     ebp, DWORD PTR [rsp+352]
        mov     QWORD PTR [rsp+336], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+96], rdi
        mov     QWORD PTR [rsp+40], rdx
        mov     DWORD PTR [rsp+24], ecx
        mov     QWORD PTR [rsp+64], r8
        cmp     ebp, 64
        jle     .L488
        sar     ebp
        mov     rcx, rdx
        mov     edi, DWORD PTR [rsp+24]
        mov     DWORD PTR [rsp+112], esi
        mov     edx, ebp
        mov     QWORD PTR [rsp+296], rbx
        lea     rbx, [0+rdx*8]
        mov     QWORD PTR [rsp+328], r14
        lea     rax, [rcx+rbx]
        mov     QWORD PTR [rsp+264], rdx
        mov     QWORD PTR [rsp+144], rax
        mov     eax, edi
        imul    eax, ebp
        mov     QWORD PTR [rsp+312], r12
        xor     r12d, r12d
        mov     QWORD PTR [rsp+320], r13
        xor     r13d, r13d
        mov     DWORD PTR [rsp+128], r15d
        cdqe
        mov     DWORD PTR [rsp+32], 0
        lea     r8, [0+rax*8]
        add     rax, rdx
        mov     DWORD PTR [rsp+8], 0
        lea     r10, [rcx+r8]
        lea     r9, [0+rax*8]
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+160], r10
        mov     r10, QWORD PTR [rsp+64]
        lea     r11, [rcx+r9]
        mov     QWORD PTR [rsp+120], r11
        lea     rax, [r10+rbx]
        mov     QWORD PTR [rsp+152], rax
        mov     eax, ebp
        imul    eax, r15d
        cdqe
        lea     r14, [0+rax*8]
        add     rax, rdx
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        add     r14, r10
        mov     QWORD PTR [rsp+48], rax
        add     rax, r10
        mov     QWORD PTR [rsp+104], rax
        mov     eax, ebp
        imul    eax, esi
        mov     QWORD PTR [rsp+168], r14
        xor     r14d, r14d
        cdqe
        mov     QWORD PTR [rsp+200], rax
        add     rax, rdx
        mov     QWORD PTR [rsp+208], rax
        movsxd  rax, edi
        sub     rdx, rax
        lea     rdi, [0+rax*8]
        lea     rax, [0+rdx*8]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdx, rcx
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"+41943032
        sub     rax, rcx
        mov     r10, rax
        mov     QWORD PTR [rsp+256], rax
        sub     r10, rbx
        sub     r10, r8
        mov     r8d, OFFSET FLAT:"tmp_A"
        lea     rax, [r8+41943040]
        mov     QWORD PTR [rsp+176], rax
        mov     eax, ebp
        shr     eax
        mov     edi, eax
        add     eax, eax
        mov     DWORD PTR [rsp+88], eax
        mov     rax, r9
        sal     rdi, 4
        add     rax, r10
        je      .L373
.L490:
        lea     rsi, [r9+rdx]
        lea     rcx, [r8+41943040]
        xor     eax, eax
        test    r10, r10
        je      .L373
.L262:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L262
        mov     ecx, DWORD PTR [rsp+88]
        cmp     ecx, ebp
        je      .L260
        mov     eax, DWORD PTR [rsp+8]
        mov     rsi, QWORD PTR [rsp+40]
        add     eax, ecx
        add     ecx, DWORD PTR [rsp+32]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L260:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L489
.L264:
        add     r10, QWORD PTR [rsp+16]
        mov     rax, r9
        add     r13d, DWORD PTR [rsp+24]
        add     r14d, ebp
        add     rdx, r15
        add     r11, r15
        add     r8, rbx
        add     rax, r10
        mov     DWORD PTR [rsp+8], r13d
        mov     DWORD PTR [rsp+32], r14d
        jne     .L490
.L373:
        xor     eax, eax
.L261:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r11+rax]
        movsd   QWORD PTR [r8+41943040+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L261
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L264
.L489:
        mov     r8d, OFFSET FLAT:"tmp_B"
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+128]
        shr     r14d
        mov     r10, QWORD PTR [rsp+104]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+264]
        mov     edi, r14d
        add     r14d, r14d
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        sub     rdx, rax
        mov     QWORD PTR [rsp+88], rcx
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+64]
        mov     DWORD PTR [rsp+32], r15d
        mov     r15, rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"+41943032
        sub     rax, rdx
        mov     r9, rax
        mov     QWORD PTR [rsp+248], rax
        lea     rax, [r8+41943040]
        mov     QWORD PTR [rsp+192], rax
        sub     r9, rbx
        sub     r9, QWORD PTR [rsp+56]
.L265:
        mov     rax, QWORD PTR [rsp+48]
        add     rax, r9
        je      .L374
        mov     rax, QWORD PTR [rsp+48]
        lea     rcx, [r8+41943040]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r9, r9
        je      .L374
.L270:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L270
        cmp     r14d, ebp
        je      .L268
        mov     rsi, QWORD PTR [rsp+64]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L268:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r10, r15
        add     r13d, ebp
        add     r8, rbx
        add     r9, QWORD PTR [rsp+8]
        cmp     ebp, r11d
        jne     .L265
        mov     rax, QWORD PTR [rsp+64]
        mov     esi, DWORD PTR [rsp+112]
        mov     r9d, ebp
        mov     ecx, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"+41943040
        mov     r12d, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+40]
        shr     r12d
        mov     DWORD PTR [rsp+40], esi
        mov     esi, ebp
        mov     QWORD PTR [rsp+128], rax
        mov     rax, QWORD PTR [rsp+96]
        mov     QWORD PTR [rsp+48], rax
        mov     eax, OFFSET FLAT:"tmp_M"+73400320
        push    6
        mov     rdi, rax
        push    rbp
        mov     r15, QWORD PTR [rsp+192]
        mov     rdx, r15
        mov     QWORD PTR [rsp+128], rax
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     eax, ebp
        mov     esi, r12d
        xor     r9d, r9d
        imul    eax, ebp
        sal     rsi, 4
        add     r12d, r12d
        mov     DWORD PTR [rsp+244], eax
        pop     r10
        xor     r10d, r10d
        pop     r11
        mov     rdi, QWORD PTR [rsp+256]
        xor     r11d, r11d
        mov     QWORD PTR [rsp+64], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+160]
        lea     rcx, [r15+rax]
        add     rdi, rax
        mov     QWORD PTR [rsp+96], rax
        mov     eax, OFFSET FLAT:"tmp_A"+41943040
        mov     QWORD PTR [rsp+184], rcx
        sub     rdi, rbx
        mov     r8, rcx
        sub     rdi, QWORD PTR [rsp+72]
        mov     QWORD PTR [rsp+176], rax
.L275:
        mov     rax, rbx
        add     rax, rdi
        je      .L375
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L375
.L278:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L278
        cmp     r12d, ebp
        je      .L276
        mov     r15, QWORD PTR [rsp+160]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L276:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+24]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L275
        mov     r15, QWORD PTR [rsp+96]
        mov     rax, QWORD PTR [rsp+112]
        push    6
        mov     ecx, ebp
        push    rbp
        mov     r8, QWORD PTR [rsp+152]
        mov     esi, ebp
        mov     r12d, ebp
        mov     r9d, DWORD PTR [rsp+48]
        lea     rdi, [rax+r15]
        shr     r12d
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+200]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     eax, OFFSET FLAT:"tmp_B"+41943040
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rcx, QWORD PTR [rsp+208]
        mov     rdi, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+208], rax
        mov     rdx, QWORD PTR [rsp+168]
        add     rcx, r15
        add     rdi, r15
        mov     QWORD PTR [rsp+200], rcx
        sub     rdi, rbx
        sub     rdi, QWORD PTR [rsp+72]
        mov     r8, rcx
        pop     rsi
        mov     esi, r12d
        pop     r9
        add     r12d, r12d
        xor     r9d, r9d
        sal     rsi, 4
.L283:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, rdi
        je      .L376
        mov     rax, QWORD PTR [rsp+56]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L376
.L286:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L286
        cmp     r12d, ebp
        je      .L284
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L284:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L283
        mov     eax, DWORD PTR [rsp+228]
        mov     r9d, ebp
        mov     esi, ebp
        mov     r14d, ebp
        shr     r14d
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        lea     r15, [0+rax*8]
        mov     DWORD PTR [rsp+280], eax
        mov     QWORD PTR [rsp+232], rax
        mov     rax, QWORD PTR [rsp+112]
        mov     QWORD PTR [rsp+216], r15
        push    6
        lea     rdi, [rax+r15]
        push    rbp
        mov     r8, QWORD PTR [rsp+200]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rdi, QWORD PTR [rsp+208]
        mov     rax, r15
        xor     r11d, r11d
        lea     r15, [rdi+r15]
        mov     rdi, QWORD PTR [rsp+264]
        mov     r10, r15
        mov     rcx, r15
        lea     r8, [rax+rdi]
        sub     r8, QWORD PTR [rsp+72]
        pop     rax
        mov     edi, r14d
        pop     rdx
        mov     rdx, QWORD PTR [rsp+136]
        sal     rdi, 4
        add     r14d, r14d
        mov     QWORD PTR [rsp+184], r15
        mov     r9, QWORD PTR [rsp+168]
        mov     r15, QWORD PTR [rsp+88]
.L291:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, r8
        je      .L377
        mov     rax, QWORD PTR [rsp+56]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L377
.L294:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L294
        cmp     r14d, ebp
        je      .L292
        mov     rsi, QWORD PTR [rsp+168]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L292:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L291
        mov     eax, DWORD PTR [rsp+280]
        mov     r9d, ebp
        mov     esi, ebp
        xor     r12d, r12d
        add     eax, DWORD PTR [rsp+228]
        mov     r8, QWORD PTR [rsp+184]
        mov     rdx, QWORD PTR [rsp+112]
        mov     QWORD PTR [rsp+184], rax
        sal     rax, 3
        mov     QWORD PTR [rsp+240], rax
        push    6
        lea     rdi, [rdx+rax]
        push    rbp
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rdi, QWORD PTR [rsp+192]
        mov     rax, QWORD PTR [rsp+232]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+272]
        pop     r13
        xor     r13d, r13d
        pop     r14
        mov     r14d, ebp
        lea     r15, [rdi+rax]
        mov     r9, QWORD PTR [rsp+144]
        shr     r14d
        lea     r8, [rax+rdx]
        mov     r10, r15
        mov     rcx, r15
        mov     edi, r14d
        mov     QWORD PTR [rsp+216], r15
        mov     r15, QWORD PTR [rsp+80]
        sub     r8, rbx
        mov     rdx, QWORD PTR [rsp+128]
        sal     rdi, 4
        add     r14d, r14d
.L299:
        mov     rax, rbx
        add     rax, r8
        je      .L378
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L378
.L302:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L302
        cmp     r14d, ebp
        je      .L300
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+216]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L300:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L299
        mov     eax, DWORD PTR [rsp+228]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        mov     rdx, QWORD PTR [rsp+216]
        mov     r15d, ebp
        xor     r14d, r14d
        sal     eax, 2
        shr     r15d
        mov     DWORD PTR [rsp+284], eax
        lea     rdi, [rdi+rax*8]
        push    6
        push    rbp
        mov     r9d, DWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     rdx, QWORD PTR [rsp+256]
        mov     rax, QWORD PTR [rsp+192]
        mov     rdi, QWORD PTR [rsp+272]
        mov     r10, QWORD PTR [rsp+176]
        add     rax, rdx
        add     rdi, rdx
        mov     QWORD PTR [rsp+192], rax
        mov     r9, rax
        mov     rcx, rax
        mov     QWORD PTR [rsp+232], rdi
        mov     r8, rdi
        sub     r8, QWORD PTR [rsp+88]
        mov     edi, r15d
        mov     QWORD PTR [rsp+288], rax
        pop     r11
        sal     rdi, 4
        xor     r11d, r11d
        pop     r12
        mov     rdx, QWORD PTR [rsp+128]
        xor     r12d, r12d
        add     r15d, r15d
        mov     QWORD PTR [rsp+256], rax
        mov     r13, QWORD PTR [rsp+80]
.L307:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L379
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L379
.L310:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L310
        cmp     r15d, ebp
        je      .L308
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L308:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L307
        mov     rdx, QWORD PTR [rsp+240]
        mov     rax, QWORD PTR [rsp+248]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     rdi, QWORD PTR [rsp+192]
        mov     r13, QWORD PTR [rsp+256]
        xor     r11d, r11d
        add     rax, rdx
        mov     r10, QWORD PTR [rsp+152]
        mov     r12, QWORD PTR [rsp+88]
        add     rdi, rdx
        sub     rax, rbx
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+248], r13
        mov     r9, rdi
        mov     r8, rax
        mov     QWORD PTR [rsp+160], rax
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+256], r9
        mov     rcx, rdi
        mov     QWORD PTR [rsp+128], rdi
        lea     r13d, [rax+rax]
        mov     QWORD PTR [rsp+192], rdi
        mov     edi, eax
        sal     rdi, 4
.L315:
        mov     rax, rbx
        add     rax, r8
        je      .L380
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L380
.L318:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L318
        cmp     r13d, ebp
        je      .L316
        mov     rsi, QWORD PTR [rsp+136]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+152]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L316:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+32]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L315
        mov     rdx, QWORD PTR [rsp+112]
        mov     eax, DWORD PTR [rsp+284]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r12, QWORD PTR [rsp+256]
        mov     r9d, ebp
        mov     QWORD PTR [rsp+136], rax
        mov     r13, QWORD PTR [rsp+248]
        lea     rdi, [rdx+rax*8]
        push    6
        push    rbp
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, QWORD PTR [rsp+192]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+232]
        mov     rdx, QWORD PTR [rsp+160]
        shr     r10d
        xor     r8d, r8d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rcx
        mov     ecx, r10d
        pop     rdi
        sal     rcx, 4
        xor     edi, edi
        add     r10d, r10d
        mov     QWORD PTR [rsp+152], r12
        mov     r12, QWORD PTR [rsp+272]
.L323:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L381
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L381
.L326:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L326
        cmp     r10d, ebp
        je      .L324
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L324:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+24]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L323
        mov     r10d, ebp
        mov     r12, QWORD PTR [rsp+152]
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rdx, QWORD PTR [rsp+168]
        mov     ecx, r10d
        mov     r13, QWORD PTR [rsp+192]
        add     r10d, r10d
        mov     rsi, QWORD PTR [rsp+160]
        sal     rcx, 4
        sub     rsi, QWORD PTR [rsp+56]
.L328:
        mov     rax, rbx
        add     rax, rsi
        je      .L382
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L382
.L333:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L333
        cmp     r10d, ebp
        je      .L331
        mov     r15, QWORD PTR [rsp+104]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+168]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L331:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L328
        mov     eax, DWORD PTR [rsp+280]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r9d, ebp
        xor     r14d, r14d
        xor     r13d, r13d
        add     eax, eax
        xor     r12d, r12d
        mov     eax, eax
        lea     r15, [0+rax*8]
        mov     QWORD PTR [rsp+88], rax
        mov     QWORD PTR [rsp+104], r15
        add     rdi, r15
        push    6
        push    rbp
        mov     rdx, QWORD PTR [rsp+192]
        mov     r8, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.isra.0)"
        movsxd  rax, DWORD PTR [rsp+56]
        mov     rsi, QWORD PTR [rsp+64]
        mov     ecx, OFFSET FLAT:"tmp_M"+73400320
        lea     rdi, [0+rax*8]
        sub     rax, QWORD PTR [rsp+280]
        sal     rax, 3
        mov     QWORD PTR [rsp+24], rdi
        lea     rdi, [rsi-73400328]
        mov     QWORD PTR [rsp+32], rax
        mov     rax, QWORD PTR [rsp+80]
        mov     r11, rdi
        sub     r11, r15
        mov     rdx, rax
        sal     rax, 5
        sal     rdx, 4
        mov     r15, rax
        mov     QWORD PTR [rsp+88], rdx
        pop     rax
        mov     eax, ebp
        shr     eax
        pop     rdx
        mov     r9, QWORD PTR [rsp+240]
        mov     rdx, rcx
        mov     r10d, eax
        add     eax, eax
        mov     QWORD PTR [rsp+112], rcx
        mov     DWORD PTR [rsp+32], 0
        sal     r10, 4
        mov     DWORD PTR [rsp+24], 0
        mov     DWORD PTR [rsp+80], eax
        mov     QWORD PTR [rsp+120], rcx
        mov     QWORD PTR [rsp+128], rdi
        mov     QWORD PTR [rsp+56], rbx
        mov     rbx, rcx
.L338:
        lea     rcx, [r9+r11]
        mov     rax, rcx
        sub     rax, QWORD PTR [rsp+96]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rcx, OFFSET FLAT:"tmp_M"
        setne   cl
        and     ecx, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r11
        setne   dil
        test    cl, dil
        je      .L347
        add     rax, r15
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L347
        mov     rax, QWORD PTR [rsp+96]
        lea     rdi, [r9+rdx]
        lea     rcx, [rax+rdi]
        mov     rax, QWORD PTR [rsp+72]
        lea     r8, [rcx+rax]
        xor     eax, eax
.L341:
        movupd  xmm0, XMMWORD PTR [rdi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [r8+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rsi+rax], xmm0
        add     rax, 16
        cmp     r10, rax
        jne     .L341
        mov     r8d, DWORD PTR [rsp+80]
        cmp     r8d, ebp
        je      .L339
        mov     eax, DWORD PTR [rsp+24]
        mov     rdi, QWORD PTR [rsp+184]
        add     eax, r8d
        mov     eax, eax
        lea     rcx, [rdi+rax]
        mov     edi, DWORD PTR [rsp+32]
        movsd   xmm0, QWORD PTR [rbx+rcx*8]
        add     rcx, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        add     rax, QWORD PTR [rsp+88]
        add     edi, r8d
        subsd   xmm0, QWORD PTR [rbx+rcx*8]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        movsxd  rdi, edi
        mov     rax, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L339:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L491
.L343:
        add     r13d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     rsi, QWORD PTR [rsp+8]
        add     r11, QWORD PTR [rsp+16]
        add     rdx, QWORD PTR [rsp+56]
        mov     DWORD PTR [rsp+24], r13d
        mov     DWORD PTR [rsp+32], r14d
        jmp     .L338
.L347:
        mov     rdi, QWORD PTR [rsp+56]
        mov     r8, QWORD PTR [rsp+104]
        lea     rax, [rdx-73400320]
        mov     rcx, rsi
        lea     rdi, [rdi-73400320+rdx]
.L340:
        movsd   xmm0, QWORD PTR [rax+73400320+r9]
        addsd   xmm0, QWORD PTR [rax+73400320]
        add     rax, 8
        add     rcx, 8
        subsd   xmm0, QWORD PTR [rax+73400312+r15]
        addsd   xmm0, QWORD PTR [rax+73400312+r8]
        movsd   QWORD PTR [rcx-8], xmm0
        cmp     rax, rdi
        jne     .L340
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L343
.L491:
        mov     rcx, QWORD PTR [rsp+120]
        mov     rbx, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rax, QWORD PTR [rsp+72]
        shr     r14d
        mov     rdx, QWORD PTR [rsp+48]
        xor     r12d, r12d
        mov     rdi, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+32], rcx
        mov     r8d, r14d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        add     rdx, rbx
        sal     r8, 4
        add     r14d, r14d
        lea     r10, [rbx+rdi]
        mov     QWORD PTR [rsp+56], rdi
        mov     rdi, rax
        sub     r10, r15
        lea     r15, [rax+73400320]
.L344:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L355
        lea     rsi, [r9+73400320]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L355
.L350:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     r8, rax
        jne     .L350
        cmp     r14d, ebp
        je      .L348
        mov     rsi, QWORD PTR [rsp+232]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        movsxd  rcx, ecx
        add     rax, rsi
        mov     QWORD PTR [rsp+24], rax
        mov     rax, QWORD PTR [rsp+48]
        add     rsi, QWORD PTR [rsp+24]
        lea     rcx, [rax+rcx*8]
        mov     rax, QWORD PTR [rsp+112]
        movsd   xmm0, QWORD PTR [rax+rsi*8]
        mov     rsi, QWORD PTR [rsp+24]
        addsd   xmm0, QWORD PTR [rax+rsi*8]
        movsd   QWORD PTR [rcx+rbx], xmm0
.L348:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L344
        mov     rax, QWORD PTR [rsp+96]
        mov     rdi, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+48]
        shr     r14d
        xor     r12d, r12d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        mov     rax, QWORD PTR [rsp+200]
        mov     r8d, r14d
        add     r14d, r14d
        sal     r8, 4
        sal     rax, 3
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+72]
        sub     r10, QWORD PTR [rsp+240]
        lea     r15, [rax+73400320]
        mov     rdi, rax
.L360:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L364
        lea     rsi, [r9+73400320]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L364
.L358:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm6, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r8
        jne     .L358
        cmp     r14d, ebp
        je      .L356
        lea     ecx, [r13+0+r14]
        lea     eax, [r12+r14]
        movsxd  rcx, ecx
        add     rcx, QWORD PTR [rsp+200]
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+184]
        lea     rsi, [rcx+rax]
        mov     rcx, QWORD PTR [rsp+112]
        add     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [rcx+rsi*8]
        addsd   xmm0, QWORD PTR [rcx+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        mov     rcx, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L356:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L360
        mov     rdi, QWORD PTR [rsp+56]
        mov     rdx, QWORD PTR [rsp+48]
        xor     r15d, r15d
        xor     r13d, r13d
        mov     rcx, QWORD PTR [rsp+32]
        mov     rax, QWORD PTR [rsp+208]
        mov     DWORD PTR [rsp+56], 0
        mov     r12d, OFFSET FLAT:"tmp_M"
        mov     DWORD PTR [rsp+24], 0
        mov     r8, QWORD PTR [rsp+96]
        sal     rax, 3
        mov     r14, QWORD PTR [rsp+112]
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+64]
        sub     r10, QWORD PTR [rsp+72]
        mov     DWORD PTR [rsp+72], 0
        lea     rsi, [0+rax*4]
        sub     rax, rsi
        lea     r11, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+32], r11
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+80], eax
        sal     r9, 4
.L361:
        mov     rdi, QWORD PTR [rsp+32]
        lea     rax, [r8+r10]
        lea     rsi, [rdi+r10]
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r10
        setne   dil
        test    sil, dil
        je      .L371
        add     rax, r8
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L371
        lea     rdi, [r8+rcx]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L367:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm7, XMMWORD PTR [rdi+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [r11+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L367
        mov     r11d, DWORD PTR [rsp+80]
        cmp     r11d, ebp
        je      .L365
        mov     eax, DWORD PTR [rsp+56]
        lea     esi, [r11+rax]
        mov     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [r14+rsi*8]
        lea     rdi, [rax+rsi]
        mov     eax, DWORD PTR [rsp+72]
        add     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [r14+rdi*8]
        add     rdi, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [r14+rdi*8]
        addsd   xmm0, QWORD PTR [r14+rsi*8]
        add     eax, r11d
        mov     rdi, QWORD PTR [rsp+48]
        cdqe
        add     rax, QWORD PTR [rsp+208]
        movsd   QWORD PTR [rdi+rax*8], xmm0
.L365:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L487
.L492:
        add     DWORD PTR [rsp+24], ebp
        mov     eax, DWORD PTR [rsp+24]
        add     r12, rbx
        add     rcx, rbx
        add     r15d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        mov     DWORD PTR [rsp+56], eax
        add     r10, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+72], r15d
        jmp     .L361
.L371:
        lea     rdi, [r8+r12]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L366:
        movsd   xmm0, QWORD PTR [r12+73400320+rax]
        subsd   xmm0, QWORD PTR [rdi+73400320+rax]
        addsd   xmm0, QWORD PTR [rsi+73400320+rax]
        addsd   xmm0, QWORD PTR [r11+73400320+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L366
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L492
.L487:
        mov     rbx, QWORD PTR [rsp+296]
        mov     r12, QWORD PTR [rsp+312]
        mov     r13, QWORD PTR [rsp+320]
        mov     r14, QWORD PTR [rsp+328]
.L248:
        mov     rbp, QWORD PTR [rsp+304]
        mov     r15, QWORD PTR [rsp+336]
        add     rsp, 344
        ret
.L364:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L357:
        movsd   xmm0, QWORD PTR [rcx+73400320+rax]
        addsd   xmm0, QWORD PTR [r9+73400320+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L357
        jmp     .L356
.L355:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L349:
        movsd   xmm0, QWORD PTR [rcx+73400320+rax]
        addsd   xmm0, QWORD PTR [r9+73400320+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L349
        jmp     .L348
.L382:
        mov     r15, QWORD PTR [rsp+104]
        mov     r14, QWORD PTR [rsp+168]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L332:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L332
        jmp     .L331
.L381:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L325:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L325
        jmp     .L324
.L380:
        xor     eax, eax
.L317:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L317
        jmp     .L316
.L379:
        xor     eax, eax
.L309:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L309
        jmp     .L308
.L378:
        xor     eax, eax
.L301:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L301
        jmp     .L300
.L377:
        xor     eax, eax
.L293:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L293
        jmp     .L292
.L376:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L285:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L285
        jmp     .L284
.L375:
        mov     r15, QWORD PTR [rsp+160]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L277:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L277
        jmp     .L276
.L374:
        xor     eax, eax
.L269:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r8+41943040+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L269
        jmp     .L268
.L488:
        test    ebp, ebp
        jle     .L248
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+328], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+32], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+312], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+296], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+320], r13
        mov     r13d, ebp
.L251:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L253:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L372
.L257:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L255:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L255
        cmp     r11d, ebp
        je      .L252
        mov     eax, r11d
.L258:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+40]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L253
.L472:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+56]
        add     edx, DWORD PTR [rsp+24]
        add     rbx, QWORD PTR [rsp+32]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L251
        jmp     .L487
.L252:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L472
        add     r10, 8
        mov     r15d, r9d
        jmp     .L257
.L372:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L258
"strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)":
        sub     rsp, 344
        mov     QWORD PTR [rsp+304], rbp
        mov     ebp, DWORD PTR [rsp+352]
        mov     QWORD PTR [rsp+336], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+96], rdi
        mov     QWORD PTR [rsp+40], rdx
        mov     DWORD PTR [rsp+24], ecx
        mov     QWORD PTR [rsp+64], r8
        cmp     ebp, 64
        jle     .L733
        sar     ebp
        mov     rcx, rdx
        mov     edi, DWORD PTR [rsp+24]
        mov     DWORD PTR [rsp+112], esi
        mov     edx, ebp
        mov     QWORD PTR [rsp+296], rbx
        lea     rbx, [0+rdx*8]
        mov     QWORD PTR [rsp+328], r14
        lea     rax, [rcx+rbx]
        mov     QWORD PTR [rsp+264], rdx
        mov     QWORD PTR [rsp+144], rax
        mov     eax, edi
        imul    eax, ebp
        mov     QWORD PTR [rsp+312], r12
        xor     r12d, r12d
        mov     QWORD PTR [rsp+320], r13
        xor     r13d, r13d
        mov     DWORD PTR [rsp+128], r15d
        cdqe
        mov     DWORD PTR [rsp+32], 0
        lea     r8, [0+rax*8]
        add     rax, rdx
        mov     DWORD PTR [rsp+8], 0
        lea     r10, [rcx+r8]
        lea     r9, [0+rax*8]
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+160], r10
        mov     r10, QWORD PTR [rsp+64]
        lea     r11, [rcx+r9]
        mov     QWORD PTR [rsp+120], r11
        lea     rax, [r10+rbx]
        mov     QWORD PTR [rsp+152], rax
        mov     eax, ebp
        imul    eax, r15d
        cdqe
        lea     r14, [0+rax*8]
        add     rax, rdx
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        add     r14, r10
        mov     QWORD PTR [rsp+48], rax
        add     rax, r10
        mov     QWORD PTR [rsp+104], rax
        mov     eax, ebp
        imul    eax, esi
        mov     QWORD PTR [rsp+168], r14
        xor     r14d, r14d
        cdqe
        mov     QWORD PTR [rsp+200], rax
        add     rax, rdx
        mov     QWORD PTR [rsp+208], rax
        movsxd  rax, edi
        sub     rdx, rax
        lea     rdi, [0+rax*8]
        lea     rax, [0+rdx*8]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdx, rcx
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"+33554424
        sub     rax, rcx
        mov     r10, rax
        mov     QWORD PTR [rsp+256], rax
        sub     r10, rbx
        sub     r10, r8
        mov     r8d, OFFSET FLAT:"tmp_A"
        lea     rax, [r8+33554432]
        mov     QWORD PTR [rsp+176], rax
        mov     eax, ebp
        shr     eax
        mov     edi, eax
        add     eax, eax
        mov     DWORD PTR [rsp+88], eax
        mov     rax, r9
        sal     rdi, 4
        add     rax, r10
        je      .L618
.L735:
        lea     rsi, [r9+rdx]
        lea     rcx, [r8+33554432]
        xor     eax, eax
        test    r10, r10
        je      .L618
.L507:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L507
        mov     ecx, DWORD PTR [rsp+88]
        cmp     ecx, ebp
        je      .L505
        mov     eax, DWORD PTR [rsp+8]
        mov     rsi, QWORD PTR [rsp+40]
        add     eax, ecx
        add     ecx, DWORD PTR [rsp+32]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L505:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L734
.L509:
        add     r10, QWORD PTR [rsp+16]
        mov     rax, r9
        add     r13d, DWORD PTR [rsp+24]
        add     r14d, ebp
        add     rdx, r15
        add     r11, r15
        add     r8, rbx
        add     rax, r10
        mov     DWORD PTR [rsp+8], r13d
        mov     DWORD PTR [rsp+32], r14d
        jne     .L735
.L618:
        xor     eax, eax
.L506:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r11+rax]
        movsd   QWORD PTR [r8+33554432+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L506
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L509
.L734:
        mov     r8d, OFFSET FLAT:"tmp_B"
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+128]
        shr     r14d
        mov     r10, QWORD PTR [rsp+104]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+264]
        mov     edi, r14d
        add     r14d, r14d
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        sub     rdx, rax
        mov     QWORD PTR [rsp+88], rcx
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+64]
        mov     DWORD PTR [rsp+32], r15d
        mov     r15, rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"+33554424
        sub     rax, rdx
        mov     r9, rax
        mov     QWORD PTR [rsp+248], rax
        lea     rax, [r8+33554432]
        mov     QWORD PTR [rsp+192], rax
        sub     r9, rbx
        sub     r9, QWORD PTR [rsp+56]
.L510:
        mov     rax, QWORD PTR [rsp+48]
        add     rax, r9
        je      .L619
        mov     rax, QWORD PTR [rsp+48]
        lea     rcx, [r8+33554432]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r9, r9
        je      .L619
.L515:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L515
        cmp     r14d, ebp
        je      .L513
        mov     rsi, QWORD PTR [rsp+64]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L513:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r10, r15
        add     r13d, ebp
        add     r8, rbx
        add     r9, QWORD PTR [rsp+8]
        cmp     ebp, r11d
        jne     .L510
        mov     rax, QWORD PTR [rsp+64]
        mov     esi, DWORD PTR [rsp+112]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"+33554432
        mov     ecx, ebp
        mov     r12d, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+144], rax
        mov     rax, QWORD PTR [rsp+48]
        shr     r12d
        mov     DWORD PTR [rsp+48], esi
        mov     esi, ebp
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+104]
        mov     QWORD PTR [rsp+56], rax
        mov     eax, OFFSET FLAT:"tmp_M"+58720256
        push    rbp
        mov     r15, QWORD PTR [rsp+192]
        mov     rdi, rax
        mov     rdx, r15
        mov     QWORD PTR [rsp+128], rax
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     eax, ebp
        mov     esi, r12d
        xor     r9d, r9d
        imul    eax, ebp
        sal     rsi, 4
        add     r12d, r12d
        mov     DWORD PTR [rsp+244], eax
        pop     r10
        xor     r10d, r10d
        pop     r11
        mov     rdi, QWORD PTR [rsp+256]
        xor     r11d, r11d
        mov     QWORD PTR [rsp+64], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+160]
        lea     rcx, [r15+rax]
        add     rdi, rax
        mov     QWORD PTR [rsp+96], rax
        mov     eax, OFFSET FLAT:"tmp_A"+33554432
        mov     QWORD PTR [rsp+184], rcx
        sub     rdi, rbx
        mov     r8, rcx
        sub     rdi, QWORD PTR [rsp+72]
        mov     QWORD PTR [rsp+176], rax
.L520:
        mov     rax, rbx
        add     rax, rdi
        je      .L620
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L620
.L523:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L523
        cmp     r12d, ebp
        je      .L521
        mov     r15, QWORD PTR [rsp+160]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L521:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+24]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L520
        mov     r15, QWORD PTR [rsp+96]
        mov     rax, QWORD PTR [rsp+112]
        sub     rsp, 8
        mov     ecx, ebp
        push    rbp
        mov     r8, QWORD PTR [rsp+152]
        mov     esi, ebp
        mov     r12d, ebp
        mov     r9d, DWORD PTR [rsp+48]
        lea     rdi, [rax+r15]
        shr     r12d
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+200]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     eax, OFFSET FLAT:"tmp_B"+33554432
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rcx, QWORD PTR [rsp+208]
        mov     rdi, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+208], rax
        mov     rdx, QWORD PTR [rsp+168]
        add     rcx, r15
        add     rdi, r15
        mov     QWORD PTR [rsp+200], rcx
        sub     rdi, rbx
        sub     rdi, QWORD PTR [rsp+72]
        mov     r8, rcx
        pop     rsi
        mov     esi, r12d
        pop     r9
        add     r12d, r12d
        xor     r9d, r9d
        sal     rsi, 4
.L528:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, rdi
        je      .L621
        mov     rax, QWORD PTR [rsp+56]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L621
.L531:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L531
        cmp     r12d, ebp
        je      .L529
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L529:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L528
        mov     eax, DWORD PTR [rsp+228]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        shr     r14d
        lea     r15, [0+rax*8]
        mov     DWORD PTR [rsp+288], eax
        mov     QWORD PTR [rsp+240], rax
        mov     rax, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+224], r15
        push    rbp
        mov     r8, QWORD PTR [rsp+200]
        lea     rdi, [rax+r15]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     rdi, QWORD PTR [rsp+208]
        mov     rax, r15
        xor     r11d, r11d
        lea     r15, [rdi+r15]
        mov     rdi, QWORD PTR [rsp+264]
        mov     r10, r15
        mov     rcx, r15
        lea     r8, [rax+rdi]
        sub     r8, QWORD PTR [rsp+72]
        pop     rax
        mov     edi, r14d
        pop     rdx
        mov     rdx, QWORD PTR [rsp+136]
        sal     rdi, 4
        add     r14d, r14d
        mov     QWORD PTR [rsp+184], r15
        mov     r9, QWORD PTR [rsp+168]
        mov     r15, QWORD PTR [rsp+88]
.L536:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, r8
        je      .L622
        mov     rax, QWORD PTR [rsp+56]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L622
.L539:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L539
        cmp     r14d, ebp
        je      .L537
        mov     rsi, QWORD PTR [rsp+168]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L537:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L536
        mov     eax, DWORD PTR [rsp+280]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+236]
        mov     r8, QWORD PTR [rsp+192]
        xor     r12d, r12d
        mov     QWORD PTR [rsp+192], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+248], rax
        push    rbp
        lea     rdi, [rdx+rax]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     rdi, QWORD PTR [rsp+192]
        mov     rax, QWORD PTR [rsp+232]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+272]
        pop     r13
        xor     r13d, r13d
        pop     r14
        mov     r14d, ebp
        lea     r15, [rdi+rax]
        mov     r9, QWORD PTR [rsp+144]
        shr     r14d
        lea     r8, [rax+rdx]
        mov     r10, r15
        mov     rcx, r15
        mov     edi, r14d
        mov     QWORD PTR [rsp+216], r15
        mov     r15, QWORD PTR [rsp+80]
        sub     r8, rbx
        mov     rdx, QWORD PTR [rsp+128]
        sal     rdi, 4
        add     r14d, r14d
.L544:
        mov     rax, rbx
        add     rax, r8
        je      .L623
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L623
.L547:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L547
        cmp     r14d, ebp
        je      .L545
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+216]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L545:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L544
        mov     eax, DWORD PTR [rsp+228]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        mov     rdx, QWORD PTR [rsp+216]
        sub     rsp, 8
        mov     r15d, ebp
        xor     r14d, r14d
        sal     eax, 2
        shr     r15d
        mov     DWORD PTR [rsp+292], eax
        lea     rdi, [rdi+rax*8]
        push    rbp
        mov     r9d, DWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     rdx, QWORD PTR [rsp+256]
        mov     rax, QWORD PTR [rsp+192]
        mov     rdi, QWORD PTR [rsp+272]
        mov     r10, QWORD PTR [rsp+176]
        add     rax, rdx
        add     rdi, rdx
        mov     QWORD PTR [rsp+192], rax
        mov     r9, rax
        mov     rcx, rax
        mov     QWORD PTR [rsp+232], rdi
        mov     r8, rdi
        sub     r8, QWORD PTR [rsp+88]
        mov     edi, r15d
        mov     QWORD PTR [rsp+288], rax
        pop     r11
        sal     rdi, 4
        xor     r11d, r11d
        pop     r12
        mov     rdx, QWORD PTR [rsp+128]
        xor     r12d, r12d
        add     r15d, r15d
        mov     QWORD PTR [rsp+256], rax
        mov     r13, QWORD PTR [rsp+80]
.L552:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L624
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L624
.L555:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L555
        cmp     r15d, ebp
        je      .L553
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L553:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L552
        mov     rdx, QWORD PTR [rsp+240]
        mov     rax, QWORD PTR [rsp+248]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     rdi, QWORD PTR [rsp+192]
        mov     r13, QWORD PTR [rsp+256]
        xor     r11d, r11d
        add     rax, rdx
        mov     r10, QWORD PTR [rsp+152]
        mov     r12, QWORD PTR [rsp+88]
        add     rdi, rdx
        sub     rax, rbx
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+248], r13
        mov     r9, rdi
        mov     r8, rax
        mov     QWORD PTR [rsp+160], rax
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+256], r9
        mov     rcx, rdi
        mov     QWORD PTR [rsp+128], rdi
        lea     r13d, [rax+rax]
        mov     QWORD PTR [rsp+192], rdi
        mov     edi, eax
        sal     rdi, 4
.L560:
        mov     rax, rbx
        add     rax, r8
        je      .L625
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L625
.L563:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L563
        cmp     r13d, ebp
        je      .L561
        mov     rsi, QWORD PTR [rsp+136]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+152]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L561:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+32]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L560
        mov     eax, DWORD PTR [rsp+284]
        mov     rdx, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r13, QWORD PTR [rsp+248]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r12, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+144], rax
        lea     rdi, [rdx+rax*8]
        push    rbp
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, QWORD PTR [rsp+192]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+232]
        mov     rdx, QWORD PTR [rsp+160]
        shr     r10d
        xor     r8d, r8d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rcx
        mov     ecx, r10d
        pop     rdi
        sal     rcx, 4
        xor     edi, edi
        add     r10d, r10d
        mov     QWORD PTR [rsp+152], r12
        mov     r12, QWORD PTR [rsp+272]
.L568:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L626
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L626
.L571:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L571
        cmp     r10d, ebp
        je      .L569
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L569:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+24]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L568
        mov     r10d, ebp
        mov     r12, QWORD PTR [rsp+152]
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rdx, QWORD PTR [rsp+168]
        mov     ecx, r10d
        mov     r13, QWORD PTR [rsp+192]
        add     r10d, r10d
        mov     rsi, QWORD PTR [rsp+160]
        sal     rcx, 4
        sub     rsi, QWORD PTR [rsp+56]
.L573:
        mov     rax, rbx
        add     rax, rsi
        je      .L627
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L627
.L578:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L578
        cmp     r10d, ebp
        je      .L576
        mov     r15, QWORD PTR [rsp+104]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+168]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L576:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L573
        mov     eax, DWORD PTR [rsp+280]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r9d, ebp
        xor     r14d, r14d
        xor     r13d, r13d
        add     eax, eax
        sub     rsp, 8
        xor     r12d, r12d
        mov     eax, eax
        lea     r15, [0+rax*8]
        mov     QWORD PTR [rsp+96], rax
        mov     QWORD PTR [rsp+112], r15
        add     rdi, r15
        push    rbp
        mov     rdx, QWORD PTR [rsp+192]
        mov     r8, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.5.isra.0)"
        movsxd  rax, DWORD PTR [rsp+56]
        mov     rsi, QWORD PTR [rsp+64]
        mov     ecx, OFFSET FLAT:"tmp_M"+58720256
        lea     rdi, [0+rax*8]
        sub     rax, QWORD PTR [rsp+280]
        sal     rax, 3
        mov     QWORD PTR [rsp+24], rdi
        lea     rdi, [rsi-58720264]
        mov     QWORD PTR [rsp+32], rax
        mov     rax, QWORD PTR [rsp+80]
        mov     r11, rdi
        sub     r11, r15
        mov     rdx, rax
        sal     rax, 5
        sal     rdx, 4
        mov     r15, rax
        mov     QWORD PTR [rsp+88], rdx
        pop     rax
        mov     eax, ebp
        shr     eax
        pop     rdx
        mov     r9, QWORD PTR [rsp+240]
        mov     rdx, rcx
        mov     r10d, eax
        add     eax, eax
        mov     QWORD PTR [rsp+112], rcx
        mov     DWORD PTR [rsp+32], 0
        sal     r10, 4
        mov     DWORD PTR [rsp+24], 0
        mov     DWORD PTR [rsp+80], eax
        mov     QWORD PTR [rsp+120], rcx
        mov     QWORD PTR [rsp+128], rdi
        mov     QWORD PTR [rsp+56], rbx
        mov     rbx, rcx
.L583:
        lea     rcx, [r9+r11]
        mov     rax, rcx
        sub     rax, QWORD PTR [rsp+96]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rcx, OFFSET FLAT:"tmp_M"
        setne   cl
        and     ecx, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r11
        setne   dil
        test    cl, dil
        je      .L592
        add     rax, r15
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L592
        mov     rax, QWORD PTR [rsp+96]
        lea     rdi, [r9+rdx]
        lea     rcx, [rax+rdi]
        mov     rax, QWORD PTR [rsp+72]
        lea     r8, [rcx+rax]
        xor     eax, eax
.L586:
        movupd  xmm0, XMMWORD PTR [rdi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [r8+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rsi+rax], xmm0
        add     rax, 16
        cmp     r10, rax
        jne     .L586
        mov     r8d, DWORD PTR [rsp+80]
        cmp     r8d, ebp
        je      .L584
        mov     eax, DWORD PTR [rsp+24]
        mov     rdi, QWORD PTR [rsp+184]
        add     eax, r8d
        mov     eax, eax
        lea     rcx, [rdi+rax]
        mov     edi, DWORD PTR [rsp+32]
        movsd   xmm0, QWORD PTR [rbx+rcx*8]
        add     rcx, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        add     rax, QWORD PTR [rsp+88]
        add     edi, r8d
        subsd   xmm0, QWORD PTR [rbx+rcx*8]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        movsxd  rdi, edi
        mov     rax, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L584:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L736
.L588:
        add     r13d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     rsi, QWORD PTR [rsp+8]
        add     r11, QWORD PTR [rsp+16]
        add     rdx, QWORD PTR [rsp+56]
        mov     DWORD PTR [rsp+24], r13d
        mov     DWORD PTR [rsp+32], r14d
        jmp     .L583
.L592:
        mov     rdi, QWORD PTR [rsp+56]
        mov     r8, QWORD PTR [rsp+104]
        lea     rax, [rdx-58720256]
        mov     rcx, rsi
        lea     rdi, [rdi-58720256+rdx]
.L585:
        movsd   xmm0, QWORD PTR [rax+58720256+r9]
        addsd   xmm0, QWORD PTR [rax+58720256]
        add     rax, 8
        add     rcx, 8
        subsd   xmm0, QWORD PTR [rax+58720248+r15]
        addsd   xmm0, QWORD PTR [rax+58720248+r8]
        movsd   QWORD PTR [rcx-8], xmm0
        cmp     rax, rdi
        jne     .L585
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L588
.L736:
        mov     rcx, QWORD PTR [rsp+120]
        mov     rbx, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rax, QWORD PTR [rsp+72]
        shr     r14d
        mov     rdx, QWORD PTR [rsp+48]
        xor     r12d, r12d
        mov     rdi, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+32], rcx
        mov     r8d, r14d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        add     rdx, rbx
        sal     r8, 4
        add     r14d, r14d
        lea     r10, [rbx+rdi]
        mov     QWORD PTR [rsp+56], rdi
        mov     rdi, rax
        sub     r10, r15
        lea     r15, [rax+58720256]
.L589:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L600
        lea     rsi, [r9+58720256]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L600
.L595:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     r8, rax
        jne     .L595
        cmp     r14d, ebp
        je      .L593
        mov     rsi, QWORD PTR [rsp+232]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        movsxd  rcx, ecx
        add     rax, rsi
        mov     QWORD PTR [rsp+24], rax
        mov     rax, QWORD PTR [rsp+48]
        add     rsi, QWORD PTR [rsp+24]
        lea     rcx, [rax+rcx*8]
        mov     rax, QWORD PTR [rsp+112]
        movsd   xmm0, QWORD PTR [rax+rsi*8]
        mov     rsi, QWORD PTR [rsp+24]
        addsd   xmm0, QWORD PTR [rax+rsi*8]
        movsd   QWORD PTR [rcx+rbx], xmm0
.L593:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L589
        mov     rax, QWORD PTR [rsp+96]
        mov     rdi, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+48]
        shr     r14d
        xor     r12d, r12d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        mov     rax, QWORD PTR [rsp+200]
        mov     r8d, r14d
        add     r14d, r14d
        sal     r8, 4
        sal     rax, 3
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+72]
        sub     r10, QWORD PTR [rsp+240]
        lea     r15, [rax+58720256]
        mov     rdi, rax
.L605:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L609
        lea     rsi, [r9+58720256]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L609
.L603:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm6, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r8
        jne     .L603
        cmp     r14d, ebp
        je      .L601
        lea     ecx, [r13+0+r14]
        lea     eax, [r12+r14]
        movsxd  rcx, ecx
        add     rcx, QWORD PTR [rsp+200]
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+184]
        lea     rsi, [rcx+rax]
        mov     rcx, QWORD PTR [rsp+112]
        add     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [rcx+rsi*8]
        addsd   xmm0, QWORD PTR [rcx+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        mov     rcx, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L601:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L605
        mov     rdi, QWORD PTR [rsp+56]
        mov     rdx, QWORD PTR [rsp+48]
        xor     r15d, r15d
        xor     r13d, r13d
        mov     rcx, QWORD PTR [rsp+32]
        mov     rax, QWORD PTR [rsp+208]
        mov     DWORD PTR [rsp+56], 0
        mov     r12d, OFFSET FLAT:"tmp_M"
        mov     DWORD PTR [rsp+24], 0
        mov     r8, QWORD PTR [rsp+96]
        sal     rax, 3
        mov     r14, QWORD PTR [rsp+112]
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+64]
        sub     r10, QWORD PTR [rsp+72]
        mov     DWORD PTR [rsp+72], 0
        lea     rsi, [0+rax*4]
        sub     rax, rsi
        lea     r11, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+32], r11
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+80], eax
        sal     r9, 4
.L606:
        mov     rdi, QWORD PTR [rsp+32]
        lea     rax, [r8+r10]
        lea     rsi, [rdi+r10]
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r10
        setne   dil
        test    sil, dil
        je      .L616
        add     rax, r8
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L616
        lea     rdi, [r8+rcx]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L612:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm7, XMMWORD PTR [rdi+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [r11+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L612
        mov     r11d, DWORD PTR [rsp+80]
        cmp     r11d, ebp
        je      .L610
        mov     eax, DWORD PTR [rsp+56]
        lea     esi, [r11+rax]
        mov     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [r14+rsi*8]
        lea     rdi, [rax+rsi]
        mov     eax, DWORD PTR [rsp+72]
        add     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [r14+rdi*8]
        add     rdi, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [r14+rdi*8]
        addsd   xmm0, QWORD PTR [r14+rsi*8]
        add     eax, r11d
        mov     rdi, QWORD PTR [rsp+48]
        cdqe
        add     rax, QWORD PTR [rsp+208]
        movsd   QWORD PTR [rdi+rax*8], xmm0
.L610:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L732
.L737:
        add     DWORD PTR [rsp+24], ebp
        mov     eax, DWORD PTR [rsp+24]
        add     r12, rbx
        add     rcx, rbx
        add     r15d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        mov     DWORD PTR [rsp+56], eax
        add     r10, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+72], r15d
        jmp     .L606
.L616:
        lea     rdi, [r8+r12]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L611:
        movsd   xmm0, QWORD PTR [r12+58720256+rax]
        subsd   xmm0, QWORD PTR [rdi+58720256+rax]
        addsd   xmm0, QWORD PTR [rsi+58720256+rax]
        addsd   xmm0, QWORD PTR [r11+58720256+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L611
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L737
.L732:
        mov     rbx, QWORD PTR [rsp+296]
        mov     r12, QWORD PTR [rsp+312]
        mov     r13, QWORD PTR [rsp+320]
        mov     r14, QWORD PTR [rsp+328]
.L493:
        mov     rbp, QWORD PTR [rsp+304]
        mov     r15, QWORD PTR [rsp+336]
        add     rsp, 344
        ret
.L609:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L602:
        movsd   xmm0, QWORD PTR [rcx+58720256+rax]
        addsd   xmm0, QWORD PTR [r9+58720256+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L602
        jmp     .L601
.L600:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L594:
        movsd   xmm0, QWORD PTR [rcx+58720256+rax]
        addsd   xmm0, QWORD PTR [r9+58720256+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L594
        jmp     .L593
.L627:
        mov     r15, QWORD PTR [rsp+104]
        mov     r14, QWORD PTR [rsp+168]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L577:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L577
        jmp     .L576
.L626:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L570:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L570
        jmp     .L569
.L625:
        xor     eax, eax
.L562:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L562
        jmp     .L561
.L624:
        xor     eax, eax
.L554:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L554
        jmp     .L553
.L623:
        xor     eax, eax
.L546:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L546
        jmp     .L545
.L622:
        xor     eax, eax
.L538:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L538
        jmp     .L537
.L621:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L530:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L530
        jmp     .L529
.L620:
        mov     r15, QWORD PTR [rsp+160]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L522:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L522
        jmp     .L521
.L619:
        xor     eax, eax
.L514:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r8+33554432+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L514
        jmp     .L513
.L733:
        test    ebp, ebp
        jle     .L493
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+328], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+32], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+312], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+296], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+320], r13
        mov     r13d, ebp
.L496:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L498:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L617
.L502:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L500:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L500
        cmp     r11d, ebp
        je      .L497
        mov     eax, r11d
.L503:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+40]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L498
.L717:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+56]
        add     edx, DWORD PTR [rsp+24]
        add     rbx, QWORD PTR [rsp+32]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L496
        jmp     .L732
.L497:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L717
        add     r10, 8
        mov     r15d, r9d
        jmp     .L502
.L617:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L503
"strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)":
        sub     rsp, 344
        mov     QWORD PTR [rsp+304], rbp
        mov     ebp, DWORD PTR [rsp+352]
        mov     QWORD PTR [rsp+336], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+96], rdi
        mov     QWORD PTR [rsp+40], rdx
        mov     DWORD PTR [rsp+24], ecx
        mov     QWORD PTR [rsp+64], r8
        cmp     ebp, 64
        jle     .L978
        sar     ebp
        mov     rcx, rdx
        mov     edi, DWORD PTR [rsp+24]
        mov     DWORD PTR [rsp+112], esi
        mov     edx, ebp
        mov     QWORD PTR [rsp+296], rbx
        lea     rbx, [0+rdx*8]
        mov     QWORD PTR [rsp+328], r14
        lea     rax, [rcx+rbx]
        mov     QWORD PTR [rsp+264], rdx
        mov     QWORD PTR [rsp+144], rax
        mov     eax, edi
        imul    eax, ebp
        mov     QWORD PTR [rsp+312], r12
        xor     r12d, r12d
        mov     QWORD PTR [rsp+320], r13
        xor     r13d, r13d
        mov     DWORD PTR [rsp+128], r15d
        cdqe
        mov     DWORD PTR [rsp+32], 0
        lea     r8, [0+rax*8]
        add     rax, rdx
        mov     DWORD PTR [rsp+8], 0
        lea     r10, [rcx+r8]
        lea     r9, [0+rax*8]
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+160], r10
        mov     r10, QWORD PTR [rsp+64]
        lea     r11, [rcx+r9]
        mov     QWORD PTR [rsp+120], r11
        lea     rax, [r10+rbx]
        mov     QWORD PTR [rsp+152], rax
        mov     eax, ebp
        imul    eax, r15d
        cdqe
        lea     r14, [0+rax*8]
        add     rax, rdx
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        add     r14, r10
        mov     QWORD PTR [rsp+48], rax
        add     rax, r10
        mov     QWORD PTR [rsp+104], rax
        mov     eax, ebp
        imul    eax, esi
        mov     QWORD PTR [rsp+168], r14
        xor     r14d, r14d
        cdqe
        mov     QWORD PTR [rsp+200], rax
        add     rax, rdx
        mov     QWORD PTR [rsp+208], rax
        movsxd  rax, edi
        sub     rdx, rax
        lea     rdi, [0+rax*8]
        lea     rax, [0+rdx*8]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdx, rcx
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"+25165816
        sub     rax, rcx
        mov     r10, rax
        mov     QWORD PTR [rsp+256], rax
        sub     r10, rbx
        sub     r10, r8
        mov     r8d, OFFSET FLAT:"tmp_A"
        lea     rax, [r8+25165824]
        mov     QWORD PTR [rsp+176], rax
        mov     eax, ebp
        shr     eax
        mov     edi, eax
        add     eax, eax
        mov     DWORD PTR [rsp+88], eax
        mov     rax, r9
        sal     rdi, 4
        add     rax, r10
        je      .L863
.L980:
        lea     rsi, [r9+rdx]
        lea     rcx, [r8+25165824]
        xor     eax, eax
        test    r10, r10
        je      .L863
.L752:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L752
        mov     ecx, DWORD PTR [rsp+88]
        cmp     ecx, ebp
        je      .L750
        mov     eax, DWORD PTR [rsp+8]
        mov     rsi, QWORD PTR [rsp+40]
        add     eax, ecx
        add     ecx, DWORD PTR [rsp+32]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L750:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L979
.L754:
        add     r10, QWORD PTR [rsp+16]
        mov     rax, r9
        add     r13d, DWORD PTR [rsp+24]
        add     r14d, ebp
        add     rdx, r15
        add     r11, r15
        add     r8, rbx
        add     rax, r10
        mov     DWORD PTR [rsp+8], r13d
        mov     DWORD PTR [rsp+32], r14d
        jne     .L980
.L863:
        xor     eax, eax
.L751:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r11+rax]
        movsd   QWORD PTR [r8+25165824+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L751
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L754
.L979:
        mov     r8d, OFFSET FLAT:"tmp_B"
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+128]
        shr     r14d
        mov     r10, QWORD PTR [rsp+104]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+264]
        mov     edi, r14d
        add     r14d, r14d
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        sub     rdx, rax
        mov     QWORD PTR [rsp+88], rcx
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+64]
        mov     DWORD PTR [rsp+32], r15d
        mov     r15, rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"+25165816
        sub     rax, rdx
        mov     r9, rax
        mov     QWORD PTR [rsp+248], rax
        lea     rax, [r8+25165824]
        mov     QWORD PTR [rsp+192], rax
        sub     r9, rbx
        sub     r9, QWORD PTR [rsp+56]
.L755:
        mov     rax, QWORD PTR [rsp+48]
        add     rax, r9
        je      .L864
        mov     rax, QWORD PTR [rsp+48]
        lea     rcx, [r8+25165824]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r9, r9
        je      .L864
.L760:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L760
        cmp     r14d, ebp
        je      .L758
        mov     rsi, QWORD PTR [rsp+64]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L758:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r10, r15
        add     r13d, ebp
        add     r8, rbx
        add     r9, QWORD PTR [rsp+8]
        cmp     ebp, r11d
        jne     .L755
        mov     rax, QWORD PTR [rsp+64]
        mov     esi, DWORD PTR [rsp+112]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"+25165824
        mov     ecx, ebp
        mov     r12d, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+144], rax
        mov     rax, QWORD PTR [rsp+48]
        shr     r12d
        mov     DWORD PTR [rsp+48], esi
        mov     esi, ebp
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+104]
        mov     QWORD PTR [rsp+56], rax
        mov     eax, OFFSET FLAT:"tmp_M"+44040192
        push    rbp
        mov     r15, QWORD PTR [rsp+192]
        mov     rdi, rax
        mov     rdx, r15
        mov     QWORD PTR [rsp+128], rax
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     eax, ebp
        mov     esi, r12d
        xor     r9d, r9d
        imul    eax, ebp
        sal     rsi, 4
        add     r12d, r12d
        mov     DWORD PTR [rsp+244], eax
        pop     r10
        xor     r10d, r10d
        pop     r11
        mov     rdi, QWORD PTR [rsp+256]
        xor     r11d, r11d
        mov     QWORD PTR [rsp+64], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+160]
        lea     rcx, [r15+rax]
        add     rdi, rax
        mov     QWORD PTR [rsp+96], rax
        mov     eax, OFFSET FLAT:"tmp_A"+25165824
        mov     QWORD PTR [rsp+184], rcx
        sub     rdi, rbx
        mov     r8, rcx
        sub     rdi, QWORD PTR [rsp+72]
        mov     QWORD PTR [rsp+176], rax
.L765:
        mov     rax, rbx
        add     rax, rdi
        je      .L865
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L865
.L768:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L768
        cmp     r12d, ebp
        je      .L766
        mov     r15, QWORD PTR [rsp+160]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L766:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+24]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L765
        mov     r15, QWORD PTR [rsp+96]
        mov     rax, QWORD PTR [rsp+112]
        sub     rsp, 8
        mov     ecx, ebp
        push    rbp
        mov     r8, QWORD PTR [rsp+152]
        mov     esi, ebp
        mov     r12d, ebp
        mov     r9d, DWORD PTR [rsp+48]
        lea     rdi, [rax+r15]
        shr     r12d
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+200]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     eax, OFFSET FLAT:"tmp_B"+25165824
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rcx, QWORD PTR [rsp+208]
        mov     rdi, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+208], rax
        mov     rdx, QWORD PTR [rsp+168]
        add     rcx, r15
        add     rdi, r15
        mov     QWORD PTR [rsp+200], rcx
        sub     rdi, rbx
        sub     rdi, QWORD PTR [rsp+72]
        mov     r8, rcx
        pop     rsi
        mov     esi, r12d
        pop     r9
        add     r12d, r12d
        xor     r9d, r9d
        sal     rsi, 4
.L773:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, rdi
        je      .L866
        mov     rax, QWORD PTR [rsp+56]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L866
.L776:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L776
        cmp     r12d, ebp
        je      .L774
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L774:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L773
        mov     eax, DWORD PTR [rsp+228]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        shr     r14d
        lea     r15, [0+rax*8]
        mov     DWORD PTR [rsp+288], eax
        mov     QWORD PTR [rsp+240], rax
        mov     rax, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+224], r15
        push    rbp
        mov     r8, QWORD PTR [rsp+200]
        lea     rdi, [rax+r15]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     rdi, QWORD PTR [rsp+208]
        mov     rax, r15
        xor     r11d, r11d
        lea     r15, [rdi+r15]
        mov     rdi, QWORD PTR [rsp+264]
        mov     r10, r15
        mov     rcx, r15
        lea     r8, [rax+rdi]
        sub     r8, QWORD PTR [rsp+72]
        pop     rax
        mov     edi, r14d
        pop     rdx
        mov     rdx, QWORD PTR [rsp+136]
        sal     rdi, 4
        add     r14d, r14d
        mov     QWORD PTR [rsp+184], r15
        mov     r9, QWORD PTR [rsp+168]
        mov     r15, QWORD PTR [rsp+88]
.L781:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, r8
        je      .L867
        mov     rax, QWORD PTR [rsp+56]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L867
.L784:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L784
        cmp     r14d, ebp
        je      .L782
        mov     rsi, QWORD PTR [rsp+168]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L782:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L781
        mov     eax, DWORD PTR [rsp+280]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+236]
        mov     r8, QWORD PTR [rsp+192]
        xor     r12d, r12d
        mov     QWORD PTR [rsp+192], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+248], rax
        push    rbp
        lea     rdi, [rdx+rax]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     rdi, QWORD PTR [rsp+192]
        mov     rax, QWORD PTR [rsp+232]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+272]
        pop     r13
        xor     r13d, r13d
        pop     r14
        mov     r14d, ebp
        lea     r15, [rdi+rax]
        mov     r9, QWORD PTR [rsp+144]
        shr     r14d
        lea     r8, [rax+rdx]
        mov     r10, r15
        mov     rcx, r15
        mov     edi, r14d
        mov     QWORD PTR [rsp+216], r15
        mov     r15, QWORD PTR [rsp+80]
        sub     r8, rbx
        mov     rdx, QWORD PTR [rsp+128]
        sal     rdi, 4
        add     r14d, r14d
.L789:
        mov     rax, rbx
        add     rax, r8
        je      .L868
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L868
.L792:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L792
        cmp     r14d, ebp
        je      .L790
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+216]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L790:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L789
        mov     eax, DWORD PTR [rsp+228]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        mov     rdx, QWORD PTR [rsp+216]
        sub     rsp, 8
        mov     r15d, ebp
        xor     r14d, r14d
        sal     eax, 2
        shr     r15d
        mov     DWORD PTR [rsp+292], eax
        lea     rdi, [rdi+rax*8]
        push    rbp
        mov     r9d, DWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     rdx, QWORD PTR [rsp+256]
        mov     rax, QWORD PTR [rsp+192]
        mov     rdi, QWORD PTR [rsp+272]
        mov     r10, QWORD PTR [rsp+176]
        add     rax, rdx
        add     rdi, rdx
        mov     QWORD PTR [rsp+192], rax
        mov     r9, rax
        mov     rcx, rax
        mov     QWORD PTR [rsp+232], rdi
        mov     r8, rdi
        sub     r8, QWORD PTR [rsp+88]
        mov     edi, r15d
        mov     QWORD PTR [rsp+288], rax
        pop     r11
        sal     rdi, 4
        xor     r11d, r11d
        pop     r12
        mov     rdx, QWORD PTR [rsp+128]
        xor     r12d, r12d
        add     r15d, r15d
        mov     QWORD PTR [rsp+256], rax
        mov     r13, QWORD PTR [rsp+80]
.L797:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L869
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L869
.L800:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L800
        cmp     r15d, ebp
        je      .L798
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L798:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L797
        mov     rdx, QWORD PTR [rsp+240]
        mov     rax, QWORD PTR [rsp+248]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     rdi, QWORD PTR [rsp+192]
        mov     r13, QWORD PTR [rsp+256]
        xor     r11d, r11d
        add     rax, rdx
        mov     r10, QWORD PTR [rsp+152]
        mov     r12, QWORD PTR [rsp+88]
        add     rdi, rdx
        sub     rax, rbx
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+248], r13
        mov     r9, rdi
        mov     r8, rax
        mov     QWORD PTR [rsp+160], rax
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+256], r9
        mov     rcx, rdi
        mov     QWORD PTR [rsp+128], rdi
        lea     r13d, [rax+rax]
        mov     QWORD PTR [rsp+192], rdi
        mov     edi, eax
        sal     rdi, 4
.L805:
        mov     rax, rbx
        add     rax, r8
        je      .L870
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L870
.L808:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L808
        cmp     r13d, ebp
        je      .L806
        mov     rsi, QWORD PTR [rsp+136]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+152]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L806:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+32]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L805
        mov     eax, DWORD PTR [rsp+284]
        mov     rdx, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r13, QWORD PTR [rsp+248]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r12, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+144], rax
        lea     rdi, [rdx+rax*8]
        push    rbp
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, QWORD PTR [rsp+192]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+232]
        mov     rdx, QWORD PTR [rsp+160]
        shr     r10d
        xor     r8d, r8d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rcx
        mov     ecx, r10d
        pop     rdi
        sal     rcx, 4
        xor     edi, edi
        add     r10d, r10d
        mov     QWORD PTR [rsp+152], r12
        mov     r12, QWORD PTR [rsp+272]
.L813:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L871
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L871
.L816:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L816
        cmp     r10d, ebp
        je      .L814
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L814:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+24]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L813
        mov     r10d, ebp
        mov     r12, QWORD PTR [rsp+152]
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rdx, QWORD PTR [rsp+168]
        mov     ecx, r10d
        mov     r13, QWORD PTR [rsp+192]
        add     r10d, r10d
        mov     rsi, QWORD PTR [rsp+160]
        sal     rcx, 4
        sub     rsi, QWORD PTR [rsp+56]
.L818:
        mov     rax, rbx
        add     rax, rsi
        je      .L872
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L872
.L823:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L823
        cmp     r10d, ebp
        je      .L821
        mov     r15, QWORD PTR [rsp+104]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+168]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L821:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L818
        mov     eax, DWORD PTR [rsp+280]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r9d, ebp
        xor     r14d, r14d
        xor     r13d, r13d
        add     eax, eax
        sub     rsp, 8
        xor     r12d, r12d
        mov     eax, eax
        lea     r15, [0+rax*8]
        mov     QWORD PTR [rsp+96], rax
        mov     QWORD PTR [rsp+112], r15
        add     rdi, r15
        push    rbp
        mov     rdx, QWORD PTR [rsp+192]
        mov     r8, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.4.isra.0)"
        movsxd  rax, DWORD PTR [rsp+56]
        mov     rsi, QWORD PTR [rsp+64]
        mov     ecx, OFFSET FLAT:"tmp_M"+44040192
        lea     rdi, [0+rax*8]
        sub     rax, QWORD PTR [rsp+280]
        sal     rax, 3
        mov     QWORD PTR [rsp+24], rdi
        lea     rdi, [rsi-44040200]
        mov     QWORD PTR [rsp+32], rax
        mov     rax, QWORD PTR [rsp+80]
        mov     r11, rdi
        sub     r11, r15
        mov     rdx, rax
        sal     rax, 5
        sal     rdx, 4
        mov     r15, rax
        mov     QWORD PTR [rsp+88], rdx
        pop     rax
        mov     eax, ebp
        shr     eax
        pop     rdx
        mov     r9, QWORD PTR [rsp+240]
        mov     rdx, rcx
        mov     r10d, eax
        add     eax, eax
        mov     QWORD PTR [rsp+112], rcx
        mov     DWORD PTR [rsp+32], 0
        sal     r10, 4
        mov     DWORD PTR [rsp+24], 0
        mov     DWORD PTR [rsp+80], eax
        mov     QWORD PTR [rsp+120], rcx
        mov     QWORD PTR [rsp+128], rdi
        mov     QWORD PTR [rsp+56], rbx
        mov     rbx, rcx
.L828:
        lea     rcx, [r9+r11]
        mov     rax, rcx
        sub     rax, QWORD PTR [rsp+96]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rcx, OFFSET FLAT:"tmp_M"
        setne   cl
        and     ecx, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r11
        setne   dil
        test    cl, dil
        je      .L837
        add     rax, r15
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L837
        mov     rax, QWORD PTR [rsp+96]
        lea     rdi, [r9+rdx]
        lea     rcx, [rax+rdi]
        mov     rax, QWORD PTR [rsp+72]
        lea     r8, [rcx+rax]
        xor     eax, eax
.L831:
        movupd  xmm0, XMMWORD PTR [rdi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [r8+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rsi+rax], xmm0
        add     rax, 16
        cmp     r10, rax
        jne     .L831
        mov     r8d, DWORD PTR [rsp+80]
        cmp     r8d, ebp
        je      .L829
        mov     eax, DWORD PTR [rsp+24]
        mov     rdi, QWORD PTR [rsp+184]
        add     eax, r8d
        mov     eax, eax
        lea     rcx, [rdi+rax]
        mov     edi, DWORD PTR [rsp+32]
        movsd   xmm0, QWORD PTR [rbx+rcx*8]
        add     rcx, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        add     rax, QWORD PTR [rsp+88]
        add     edi, r8d
        subsd   xmm0, QWORD PTR [rbx+rcx*8]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        movsxd  rdi, edi
        mov     rax, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L829:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L981
.L833:
        add     r13d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     rsi, QWORD PTR [rsp+8]
        add     r11, QWORD PTR [rsp+16]
        add     rdx, QWORD PTR [rsp+56]
        mov     DWORD PTR [rsp+24], r13d
        mov     DWORD PTR [rsp+32], r14d
        jmp     .L828
.L837:
        mov     rdi, QWORD PTR [rsp+56]
        mov     r8, QWORD PTR [rsp+104]
        lea     rax, [rdx-44040192]
        mov     rcx, rsi
        lea     rdi, [rdi-44040192+rdx]
.L830:
        movsd   xmm0, QWORD PTR [rax+44040192+r9]
        addsd   xmm0, QWORD PTR [rax+44040192]
        add     rax, 8
        add     rcx, 8
        subsd   xmm0, QWORD PTR [rax+44040184+r15]
        addsd   xmm0, QWORD PTR [rax+44040184+r8]
        movsd   QWORD PTR [rcx-8], xmm0
        cmp     rax, rdi
        jne     .L830
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L833
.L981:
        mov     rcx, QWORD PTR [rsp+120]
        mov     rbx, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rax, QWORD PTR [rsp+72]
        shr     r14d
        mov     rdx, QWORD PTR [rsp+48]
        xor     r12d, r12d
        mov     rdi, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+32], rcx
        mov     r8d, r14d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        add     rdx, rbx
        sal     r8, 4
        add     r14d, r14d
        lea     r10, [rbx+rdi]
        mov     QWORD PTR [rsp+56], rdi
        mov     rdi, rax
        sub     r10, r15
        lea     r15, [rax+44040192]
.L834:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L845
        lea     rsi, [r9+44040192]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L845
.L840:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     r8, rax
        jne     .L840
        cmp     r14d, ebp
        je      .L838
        mov     rsi, QWORD PTR [rsp+232]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        movsxd  rcx, ecx
        add     rax, rsi
        mov     QWORD PTR [rsp+24], rax
        mov     rax, QWORD PTR [rsp+48]
        add     rsi, QWORD PTR [rsp+24]
        lea     rcx, [rax+rcx*8]
        mov     rax, QWORD PTR [rsp+112]
        movsd   xmm0, QWORD PTR [rax+rsi*8]
        mov     rsi, QWORD PTR [rsp+24]
        addsd   xmm0, QWORD PTR [rax+rsi*8]
        movsd   QWORD PTR [rcx+rbx], xmm0
.L838:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L834
        mov     rax, QWORD PTR [rsp+96]
        mov     rdi, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+48]
        shr     r14d
        xor     r12d, r12d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        mov     rax, QWORD PTR [rsp+200]
        mov     r8d, r14d
        add     r14d, r14d
        sal     r8, 4
        sal     rax, 3
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+72]
        sub     r10, QWORD PTR [rsp+240]
        lea     r15, [rax+44040192]
        mov     rdi, rax
.L850:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L854
        lea     rsi, [r9+44040192]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L854
.L848:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm6, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r8
        jne     .L848
        cmp     r14d, ebp
        je      .L846
        lea     ecx, [r13+0+r14]
        lea     eax, [r12+r14]
        movsxd  rcx, ecx
        add     rcx, QWORD PTR [rsp+200]
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+184]
        lea     rsi, [rcx+rax]
        mov     rcx, QWORD PTR [rsp+112]
        add     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [rcx+rsi*8]
        addsd   xmm0, QWORD PTR [rcx+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        mov     rcx, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L846:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L850
        mov     rdi, QWORD PTR [rsp+56]
        mov     rdx, QWORD PTR [rsp+48]
        xor     r15d, r15d
        xor     r13d, r13d
        mov     rcx, QWORD PTR [rsp+32]
        mov     rax, QWORD PTR [rsp+208]
        mov     DWORD PTR [rsp+56], 0
        mov     r12d, OFFSET FLAT:"tmp_M"
        mov     DWORD PTR [rsp+24], 0
        mov     r8, QWORD PTR [rsp+96]
        sal     rax, 3
        mov     r14, QWORD PTR [rsp+112]
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+64]
        sub     r10, QWORD PTR [rsp+72]
        mov     DWORD PTR [rsp+72], 0
        lea     rsi, [0+rax*4]
        sub     rax, rsi
        lea     r11, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+32], r11
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+80], eax
        sal     r9, 4
.L851:
        mov     rdi, QWORD PTR [rsp+32]
        lea     rax, [r8+r10]
        lea     rsi, [rdi+r10]
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r10
        setne   dil
        test    sil, dil
        je      .L861
        add     rax, r8
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L861
        lea     rdi, [r8+rcx]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L857:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm7, XMMWORD PTR [rdi+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [r11+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L857
        mov     r11d, DWORD PTR [rsp+80]
        cmp     r11d, ebp
        je      .L855
        mov     eax, DWORD PTR [rsp+56]
        lea     esi, [r11+rax]
        mov     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [r14+rsi*8]
        lea     rdi, [rax+rsi]
        mov     eax, DWORD PTR [rsp+72]
        add     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [r14+rdi*8]
        add     rdi, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [r14+rdi*8]
        addsd   xmm0, QWORD PTR [r14+rsi*8]
        add     eax, r11d
        mov     rdi, QWORD PTR [rsp+48]
        cdqe
        add     rax, QWORD PTR [rsp+208]
        movsd   QWORD PTR [rdi+rax*8], xmm0
.L855:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L977
.L982:
        add     DWORD PTR [rsp+24], ebp
        mov     eax, DWORD PTR [rsp+24]
        add     r12, rbx
        add     rcx, rbx
        add     r15d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        mov     DWORD PTR [rsp+56], eax
        add     r10, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+72], r15d
        jmp     .L851
.L861:
        lea     rdi, [r8+r12]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L856:
        movsd   xmm0, QWORD PTR [r12+44040192+rax]
        subsd   xmm0, QWORD PTR [rdi+44040192+rax]
        addsd   xmm0, QWORD PTR [rsi+44040192+rax]
        addsd   xmm0, QWORD PTR [r11+44040192+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L856
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L982
.L977:
        mov     rbx, QWORD PTR [rsp+296]
        mov     r12, QWORD PTR [rsp+312]
        mov     r13, QWORD PTR [rsp+320]
        mov     r14, QWORD PTR [rsp+328]
.L738:
        mov     rbp, QWORD PTR [rsp+304]
        mov     r15, QWORD PTR [rsp+336]
        add     rsp, 344
        ret
.L854:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L847:
        movsd   xmm0, QWORD PTR [rcx+44040192+rax]
        addsd   xmm0, QWORD PTR [r9+44040192+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L847
        jmp     .L846
.L845:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L839:
        movsd   xmm0, QWORD PTR [rcx+44040192+rax]
        addsd   xmm0, QWORD PTR [r9+44040192+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L839
        jmp     .L838
.L872:
        mov     r15, QWORD PTR [rsp+104]
        mov     r14, QWORD PTR [rsp+168]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L822:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L822
        jmp     .L821
.L871:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L815:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L815
        jmp     .L814
.L870:
        xor     eax, eax
.L807:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L807
        jmp     .L806
.L869:
        xor     eax, eax
.L799:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L799
        jmp     .L798
.L868:
        xor     eax, eax
.L791:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L791
        jmp     .L790
.L867:
        xor     eax, eax
.L783:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L783
        jmp     .L782
.L866:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L775:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L775
        jmp     .L774
.L865:
        mov     r15, QWORD PTR [rsp+160]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L767:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L767
        jmp     .L766
.L864:
        xor     eax, eax
.L759:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r8+25165824+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L759
        jmp     .L758
.L978:
        test    ebp, ebp
        jle     .L738
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+328], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+32], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+312], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+296], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+320], r13
        mov     r13d, ebp
.L741:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L743:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L862
.L747:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L745:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L745
        cmp     r11d, ebp
        je      .L742
        mov     eax, r11d
.L748:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+40]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L743
.L962:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+56]
        add     edx, DWORD PTR [rsp+24]
        add     rbx, QWORD PTR [rsp+32]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L741
        jmp     .L977
.L742:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L962
        add     r10, 8
        mov     r15d, r9d
        jmp     .L747
.L862:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L748
"strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)":
        sub     rsp, 344
        mov     QWORD PTR [rsp+304], rbp
        mov     ebp, DWORD PTR [rsp+352]
        mov     QWORD PTR [rsp+336], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+96], rdi
        mov     QWORD PTR [rsp+40], rdx
        mov     DWORD PTR [rsp+24], ecx
        mov     QWORD PTR [rsp+64], r8
        cmp     ebp, 64
        jle     .L1223
        sar     ebp
        mov     rcx, rdx
        mov     edi, DWORD PTR [rsp+24]
        mov     DWORD PTR [rsp+112], esi
        mov     edx, ebp
        mov     QWORD PTR [rsp+296], rbx
        lea     rbx, [0+rdx*8]
        mov     QWORD PTR [rsp+328], r14
        lea     rax, [rcx+rbx]
        mov     QWORD PTR [rsp+264], rdx
        mov     QWORD PTR [rsp+144], rax
        mov     eax, edi
        imul    eax, ebp
        mov     QWORD PTR [rsp+312], r12
        xor     r12d, r12d
        mov     QWORD PTR [rsp+320], r13
        xor     r13d, r13d
        mov     DWORD PTR [rsp+128], r15d
        cdqe
        mov     DWORD PTR [rsp+32], 0
        lea     r8, [0+rax*8]
        add     rax, rdx
        mov     DWORD PTR [rsp+8], 0
        lea     r10, [rcx+r8]
        lea     r9, [0+rax*8]
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+160], r10
        mov     r10, QWORD PTR [rsp+64]
        lea     r11, [rcx+r9]
        mov     QWORD PTR [rsp+120], r11
        lea     rax, [r10+rbx]
        mov     QWORD PTR [rsp+152], rax
        mov     eax, ebp
        imul    eax, r15d
        cdqe
        lea     r14, [0+rax*8]
        add     rax, rdx
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        add     r14, r10
        mov     QWORD PTR [rsp+48], rax
        add     rax, r10
        mov     QWORD PTR [rsp+104], rax
        mov     eax, ebp
        imul    eax, esi
        mov     QWORD PTR [rsp+168], r14
        xor     r14d, r14d
        cdqe
        mov     QWORD PTR [rsp+200], rax
        add     rax, rdx
        mov     QWORD PTR [rsp+208], rax
        movsxd  rax, edi
        sub     rdx, rax
        lea     rdi, [0+rax*8]
        lea     rax, [0+rdx*8]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdx, rcx
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"+16777208
        sub     rax, rcx
        mov     r10, rax
        mov     QWORD PTR [rsp+256], rax
        sub     r10, rbx
        sub     r10, r8
        mov     r8d, OFFSET FLAT:"tmp_A"
        lea     rax, [r8+16777216]
        mov     QWORD PTR [rsp+176], rax
        mov     eax, ebp
        shr     eax
        mov     edi, eax
        add     eax, eax
        mov     DWORD PTR [rsp+88], eax
        mov     rax, r9
        sal     rdi, 4
        add     rax, r10
        je      .L1108
.L1225:
        lea     rsi, [r9+rdx]
        lea     rcx, [r8+16777216]
        xor     eax, eax
        test    r10, r10
        je      .L1108
.L997:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L997
        mov     ecx, DWORD PTR [rsp+88]
        cmp     ecx, ebp
        je      .L995
        mov     eax, DWORD PTR [rsp+8]
        mov     rsi, QWORD PTR [rsp+40]
        add     eax, ecx
        add     ecx, DWORD PTR [rsp+32]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L995:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L1224
.L999:
        add     r10, QWORD PTR [rsp+16]
        mov     rax, r9
        add     r13d, DWORD PTR [rsp+24]
        add     r14d, ebp
        add     rdx, r15
        add     r11, r15
        add     r8, rbx
        add     rax, r10
        mov     DWORD PTR [rsp+8], r13d
        mov     DWORD PTR [rsp+32], r14d
        jne     .L1225
.L1108:
        xor     eax, eax
.L996:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r11+rax]
        movsd   QWORD PTR [r8+16777216+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L996
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L999
.L1224:
        mov     r8d, OFFSET FLAT:"tmp_B"
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+128]
        shr     r14d
        mov     r10, QWORD PTR [rsp+104]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+264]
        mov     edi, r14d
        add     r14d, r14d
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        sub     rdx, rax
        mov     QWORD PTR [rsp+88], rcx
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+64]
        mov     DWORD PTR [rsp+32], r15d
        mov     r15, rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"+16777208
        sub     rax, rdx
        mov     r9, rax
        mov     QWORD PTR [rsp+248], rax
        lea     rax, [r8+16777216]
        mov     QWORD PTR [rsp+192], rax
        sub     r9, rbx
        sub     r9, QWORD PTR [rsp+56]
.L1000:
        mov     rax, QWORD PTR [rsp+48]
        add     rax, r9
        je      .L1109
        mov     rax, QWORD PTR [rsp+48]
        lea     rcx, [r8+16777216]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r9, r9
        je      .L1109
.L1005:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1005
        cmp     r14d, ebp
        je      .L1003
        mov     rsi, QWORD PTR [rsp+64]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L1003:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r10, r15
        add     r13d, ebp
        add     r8, rbx
        add     r9, QWORD PTR [rsp+8]
        cmp     ebp, r11d
        jne     .L1000
        mov     rax, QWORD PTR [rsp+64]
        mov     esi, DWORD PTR [rsp+112]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"+16777216
        mov     ecx, ebp
        mov     r12d, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+144], rax
        mov     rax, QWORD PTR [rsp+48]
        shr     r12d
        mov     DWORD PTR [rsp+48], esi
        mov     esi, ebp
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+104]
        mov     QWORD PTR [rsp+56], rax
        mov     eax, OFFSET FLAT:"tmp_M"+29360128
        push    rbp
        mov     r15, QWORD PTR [rsp+192]
        mov     rdi, rax
        mov     rdx, r15
        mov     QWORD PTR [rsp+128], rax
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     eax, ebp
        mov     esi, r12d
        xor     r9d, r9d
        imul    eax, ebp
        sal     rsi, 4
        add     r12d, r12d
        mov     DWORD PTR [rsp+244], eax
        pop     r10
        xor     r10d, r10d
        pop     r11
        mov     rdi, QWORD PTR [rsp+256]
        xor     r11d, r11d
        mov     QWORD PTR [rsp+64], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+160]
        lea     rcx, [r15+rax]
        add     rdi, rax
        mov     QWORD PTR [rsp+96], rax
        mov     eax, OFFSET FLAT:"tmp_A"+16777216
        mov     QWORD PTR [rsp+184], rcx
        sub     rdi, rbx
        mov     r8, rcx
        sub     rdi, QWORD PTR [rsp+72]
        mov     QWORD PTR [rsp+176], rax
.L1010:
        mov     rax, rbx
        add     rax, rdi
        je      .L1110
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L1110
.L1013:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L1013
        cmp     r12d, ebp
        je      .L1011
        mov     r15, QWORD PTR [rsp+160]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1011:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+24]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L1010
        mov     r15, QWORD PTR [rsp+96]
        mov     rax, QWORD PTR [rsp+112]
        sub     rsp, 8
        mov     ecx, ebp
        push    rbp
        mov     r8, QWORD PTR [rsp+152]
        mov     esi, ebp
        mov     r12d, ebp
        mov     r9d, DWORD PTR [rsp+48]
        lea     rdi, [rax+r15]
        shr     r12d
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+200]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     eax, OFFSET FLAT:"tmp_B"+16777216
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rcx, QWORD PTR [rsp+208]
        mov     rdi, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+208], rax
        mov     rdx, QWORD PTR [rsp+168]
        add     rcx, r15
        add     rdi, r15
        mov     QWORD PTR [rsp+200], rcx
        sub     rdi, rbx
        sub     rdi, QWORD PTR [rsp+72]
        mov     r8, rcx
        pop     rsi
        mov     esi, r12d
        pop     r9
        add     r12d, r12d
        xor     r9d, r9d
        sal     rsi, 4
.L1018:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, rdi
        je      .L1111
        mov     rax, QWORD PTR [rsp+56]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L1111
.L1021:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L1021
        cmp     r12d, ebp
        je      .L1019
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1019:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L1018
        mov     eax, DWORD PTR [rsp+228]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        shr     r14d
        lea     r15, [0+rax*8]
        mov     DWORD PTR [rsp+288], eax
        mov     QWORD PTR [rsp+240], rax
        mov     rax, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+224], r15
        push    rbp
        mov     r8, QWORD PTR [rsp+200]
        lea     rdi, [rax+r15]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     rdi, QWORD PTR [rsp+208]
        mov     rax, r15
        xor     r11d, r11d
        lea     r15, [rdi+r15]
        mov     rdi, QWORD PTR [rsp+264]
        mov     r10, r15
        mov     rcx, r15
        lea     r8, [rax+rdi]
        sub     r8, QWORD PTR [rsp+72]
        pop     rax
        mov     edi, r14d
        pop     rdx
        mov     rdx, QWORD PTR [rsp+136]
        sal     rdi, 4
        add     r14d, r14d
        mov     QWORD PTR [rsp+184], r15
        mov     r9, QWORD PTR [rsp+168]
        mov     r15, QWORD PTR [rsp+88]
.L1026:
        mov     rax, QWORD PTR [rsp+56]
        add     rax, r8
        je      .L1112
        mov     rax, QWORD PTR [rsp+56]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1112
.L1029:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1029
        cmp     r14d, ebp
        je      .L1027
        mov     rsi, QWORD PTR [rsp+168]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+184]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1027:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1026
        mov     eax, DWORD PTR [rsp+280]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+236]
        mov     r8, QWORD PTR [rsp+192]
        xor     r12d, r12d
        mov     QWORD PTR [rsp+192], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+248], rax
        push    rbp
        lea     rdi, [rdx+rax]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     rdi, QWORD PTR [rsp+192]
        mov     rax, QWORD PTR [rsp+232]
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+272]
        pop     r13
        xor     r13d, r13d
        pop     r14
        mov     r14d, ebp
        lea     r15, [rdi+rax]
        mov     r9, QWORD PTR [rsp+144]
        shr     r14d
        lea     r8, [rax+rdx]
        mov     r10, r15
        mov     rcx, r15
        mov     edi, r14d
        mov     QWORD PTR [rsp+216], r15
        mov     r15, QWORD PTR [rsp+80]
        sub     r8, rbx
        mov     rdx, QWORD PTR [rsp+128]
        sal     rdi, 4
        add     r14d, r14d
.L1034:
        mov     rax, rbx
        add     rax, r8
        je      .L1113
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1113
.L1037:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L1037
        cmp     r14d, ebp
        je      .L1035
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+216]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1035:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1034
        mov     eax, DWORD PTR [rsp+228]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        mov     rdx, QWORD PTR [rsp+216]
        sub     rsp, 8
        mov     r15d, ebp
        xor     r14d, r14d
        sal     eax, 2
        shr     r15d
        mov     DWORD PTR [rsp+292], eax
        lea     rdi, [rdi+rax*8]
        push    rbp
        mov     r9d, DWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     rdx, QWORD PTR [rsp+256]
        mov     rax, QWORD PTR [rsp+192]
        mov     rdi, QWORD PTR [rsp+272]
        mov     r10, QWORD PTR [rsp+176]
        add     rax, rdx
        add     rdi, rdx
        mov     QWORD PTR [rsp+192], rax
        mov     r9, rax
        mov     rcx, rax
        mov     QWORD PTR [rsp+232], rdi
        mov     r8, rdi
        sub     r8, QWORD PTR [rsp+88]
        mov     edi, r15d
        mov     QWORD PTR [rsp+288], rax
        pop     r11
        sal     rdi, 4
        xor     r11d, r11d
        pop     r12
        mov     rdx, QWORD PTR [rsp+128]
        xor     r12d, r12d
        add     r15d, r15d
        mov     QWORD PTR [rsp+256], rax
        mov     r13, QWORD PTR [rsp+80]
.L1042:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L1114
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1114
.L1045:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L1045
        cmp     r15d, ebp
        je      .L1043
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1043:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1042
        mov     rdx, QWORD PTR [rsp+240]
        mov     rax, QWORD PTR [rsp+248]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     rdi, QWORD PTR [rsp+192]
        mov     r13, QWORD PTR [rsp+256]
        xor     r11d, r11d
        add     rax, rdx
        mov     r10, QWORD PTR [rsp+152]
        mov     r12, QWORD PTR [rsp+88]
        add     rdi, rdx
        sub     rax, rbx
        mov     rdx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+248], r13
        mov     r9, rdi
        mov     r8, rax
        mov     QWORD PTR [rsp+160], rax
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+256], r9
        mov     rcx, rdi
        mov     QWORD PTR [rsp+128], rdi
        lea     r13d, [rax+rax]
        mov     QWORD PTR [rsp+192], rdi
        mov     edi, eax
        sal     rdi, 4
.L1050:
        mov     rax, rbx
        add     rax, r8
        je      .L1115
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1115
.L1053:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1053
        cmp     r13d, ebp
        je      .L1051
        mov     rsi, QWORD PTR [rsp+136]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+152]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1051:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+32]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1050
        mov     eax, DWORD PTR [rsp+284]
        mov     rdx, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r13, QWORD PTR [rsp+248]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r12, QWORD PTR [rsp+264]
        mov     QWORD PTR [rsp+144], rax
        lea     rdi, [rdx+rax*8]
        push    rbp
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, QWORD PTR [rsp+192]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+232]
        mov     rdx, QWORD PTR [rsp+160]
        shr     r10d
        xor     r8d, r8d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rcx
        mov     ecx, r10d
        pop     rdi
        sal     rcx, 4
        xor     edi, edi
        add     r10d, r10d
        mov     QWORD PTR [rsp+152], r12
        mov     r12, QWORD PTR [rsp+272]
.L1058:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L1116
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L1116
.L1061:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L1061
        cmp     r10d, ebp
        je      .L1059
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+120]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+176]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1059:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+24]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L1058
        mov     r10d, ebp
        mov     r12, QWORD PTR [rsp+152]
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rdx, QWORD PTR [rsp+168]
        mov     ecx, r10d
        mov     r13, QWORD PTR [rsp+192]
        add     r10d, r10d
        mov     rsi, QWORD PTR [rsp+160]
        sal     rcx, 4
        sub     rsi, QWORD PTR [rsp+56]
.L1063:
        mov     rax, rbx
        add     rax, rsi
        je      .L1117
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L1117
.L1068:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L1068
        cmp     r10d, ebp
        je      .L1066
        mov     r15, QWORD PTR [rsp+104]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+168]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+128]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1066:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L1063
        mov     eax, DWORD PTR [rsp+280]
        mov     rdi, QWORD PTR [rsp+112]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+228]
        mov     r9d, ebp
        xor     r14d, r14d
        xor     r13d, r13d
        add     eax, eax
        sub     rsp, 8
        xor     r12d, r12d
        mov     eax, eax
        lea     r15, [0+rax*8]
        mov     QWORD PTR [rsp+96], rax
        mov     QWORD PTR [rsp+112], r15
        add     rdi, r15
        push    rbp
        mov     rdx, QWORD PTR [rsp+192]
        mov     r8, QWORD PTR [rsp+144]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.3.isra.0)"
        movsxd  rax, DWORD PTR [rsp+56]
        mov     rsi, QWORD PTR [rsp+64]
        mov     ecx, OFFSET FLAT:"tmp_M"+29360128
        lea     rdi, [0+rax*8]
        sub     rax, QWORD PTR [rsp+280]
        sal     rax, 3
        mov     QWORD PTR [rsp+24], rdi
        lea     rdi, [rsi-29360136]
        mov     QWORD PTR [rsp+32], rax
        mov     rax, QWORD PTR [rsp+80]
        mov     r11, rdi
        sub     r11, r15
        mov     rdx, rax
        sal     rax, 5
        sal     rdx, 4
        mov     r15, rax
        mov     QWORD PTR [rsp+88], rdx
        pop     rax
        mov     eax, ebp
        shr     eax
        pop     rdx
        mov     r9, QWORD PTR [rsp+240]
        mov     rdx, rcx
        mov     r10d, eax
        add     eax, eax
        mov     QWORD PTR [rsp+112], rcx
        mov     DWORD PTR [rsp+32], 0
        sal     r10, 4
        mov     DWORD PTR [rsp+24], 0
        mov     DWORD PTR [rsp+80], eax
        mov     QWORD PTR [rsp+120], rcx
        mov     QWORD PTR [rsp+128], rdi
        mov     QWORD PTR [rsp+56], rbx
        mov     rbx, rcx
.L1073:
        lea     rcx, [r9+r11]
        mov     rax, rcx
        sub     rax, QWORD PTR [rsp+96]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rcx, OFFSET FLAT:"tmp_M"
        setne   cl
        and     ecx, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r11
        setne   dil
        test    cl, dil
        je      .L1082
        add     rax, r15
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1082
        mov     rax, QWORD PTR [rsp+96]
        lea     rdi, [r9+rdx]
        lea     rcx, [rax+rdi]
        mov     rax, QWORD PTR [rsp+72]
        lea     r8, [rcx+rax]
        xor     eax, eax
.L1076:
        movupd  xmm0, XMMWORD PTR [rdi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [r8+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rsi+rax], xmm0
        add     rax, 16
        cmp     r10, rax
        jne     .L1076
        mov     r8d, DWORD PTR [rsp+80]
        cmp     r8d, ebp
        je      .L1074
        mov     eax, DWORD PTR [rsp+24]
        mov     rdi, QWORD PTR [rsp+184]
        add     eax, r8d
        mov     eax, eax
        lea     rcx, [rdi+rax]
        mov     edi, DWORD PTR [rsp+32]
        movsd   xmm0, QWORD PTR [rbx+rcx*8]
        add     rcx, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        add     rax, QWORD PTR [rsp+88]
        add     edi, r8d
        subsd   xmm0, QWORD PTR [rbx+rcx*8]
        addsd   xmm0, QWORD PTR [rbx+rax*8]
        movsxd  rdi, edi
        mov     rax, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L1074:
        add     r12d, 1
        cmp     ebp, r12d
        je      .L1226
.L1078:
        add     r13d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     rsi, QWORD PTR [rsp+8]
        add     r11, QWORD PTR [rsp+16]
        add     rdx, QWORD PTR [rsp+56]
        mov     DWORD PTR [rsp+24], r13d
        mov     DWORD PTR [rsp+32], r14d
        jmp     .L1073
.L1082:
        mov     rdi, QWORD PTR [rsp+56]
        mov     r8, QWORD PTR [rsp+104]
        lea     rax, [rdx-29360128]
        mov     rcx, rsi
        lea     rdi, [rdi-29360128+rdx]
.L1075:
        movsd   xmm0, QWORD PTR [rax+29360128+r9]
        addsd   xmm0, QWORD PTR [rax+29360128]
        add     rax, 8
        add     rcx, 8
        subsd   xmm0, QWORD PTR [rax+29360120+r15]
        addsd   xmm0, QWORD PTR [rax+29360120+r8]
        movsd   QWORD PTR [rcx-8], xmm0
        cmp     rax, rdi
        jne     .L1075
        add     r12d, 1
        cmp     ebp, r12d
        jne     .L1078
.L1226:
        mov     rcx, QWORD PTR [rsp+120]
        mov     rbx, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rax, QWORD PTR [rsp+72]
        shr     r14d
        mov     rdx, QWORD PTR [rsp+48]
        xor     r12d, r12d
        mov     rdi, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+32], rcx
        mov     r8d, r14d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        add     rdx, rbx
        sal     r8, 4
        add     r14d, r14d
        lea     r10, [rbx+rdi]
        mov     QWORD PTR [rsp+56], rdi
        mov     rdi, rax
        sub     r10, r15
        lea     r15, [rax+29360128]
.L1079:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1090
        lea     rsi, [r9+29360128]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L1090
.L1085:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     r8, rax
        jne     .L1085
        cmp     r14d, ebp
        je      .L1083
        mov     rsi, QWORD PTR [rsp+232]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        movsxd  rcx, ecx
        add     rax, rsi
        mov     QWORD PTR [rsp+24], rax
        mov     rax, QWORD PTR [rsp+48]
        add     rsi, QWORD PTR [rsp+24]
        lea     rcx, [rax+rcx*8]
        mov     rax, QWORD PTR [rsp+112]
        movsd   xmm0, QWORD PTR [rax+rsi*8]
        mov     rsi, QWORD PTR [rsp+24]
        addsd   xmm0, QWORD PTR [rax+rsi*8]
        movsd   QWORD PTR [rcx+rbx], xmm0
.L1083:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L1079
        mov     rax, QWORD PTR [rsp+96]
        mov     rdi, QWORD PTR [rsp+56]
        mov     r14d, ebp
        xor     r13d, r13d
        mov     rdx, QWORD PTR [rsp+48]
        shr     r14d
        xor     r12d, r12d
        xor     r11d, r11d
        lea     r9, "tmp_M"[rax]
        mov     rax, QWORD PTR [rsp+200]
        mov     r8d, r14d
        add     r14d, r14d
        sal     r8, 4
        sal     rax, 3
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+72]
        sub     r10, QWORD PTR [rsp+240]
        lea     r15, [rax+29360128]
        mov     rdi, rax
.L1095:
        lea     rax, [r10+rdi]
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1099
        lea     rsi, [r9+29360128]
        lea     rcx, [r15+r9]
        xor     eax, eax
        cmp     r10, OFFSET FLAT:"tmp_M"
        je      .L1099
.L1093:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm6, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r8
        jne     .L1093
        cmp     r14d, ebp
        je      .L1091
        lea     ecx, [r13+0+r14]
        lea     eax, [r12+r14]
        movsxd  rcx, ecx
        add     rcx, QWORD PTR [rsp+200]
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+184]
        lea     rsi, [rcx+rax]
        mov     rcx, QWORD PTR [rsp+112]
        add     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [rcx+rsi*8]
        addsd   xmm0, QWORD PTR [rcx+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        mov     rcx, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L1091:
        add     r11d, 1
        add     r12d, ebp
        add     r9, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        add     r10, QWORD PTR [rsp+16]
        cmp     ebp, r11d
        jne     .L1095
        mov     rdi, QWORD PTR [rsp+56]
        mov     rdx, QWORD PTR [rsp+48]
        xor     r15d, r15d
        xor     r13d, r13d
        mov     rcx, QWORD PTR [rsp+32]
        mov     rax, QWORD PTR [rsp+208]
        mov     DWORD PTR [rsp+56], 0
        mov     r12d, OFFSET FLAT:"tmp_M"
        mov     DWORD PTR [rsp+24], 0
        mov     r8, QWORD PTR [rsp+96]
        sal     rax, 3
        mov     r14, QWORD PTR [rsp+112]
        lea     r10, [rdi+rax]
        add     rdx, rax
        mov     rax, QWORD PTR [rsp+64]
        sub     r10, QWORD PTR [rsp+72]
        mov     DWORD PTR [rsp+72], 0
        lea     rsi, [0+rax*4]
        sub     rax, rsi
        lea     r11, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+32], r11
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+80], eax
        sal     r9, 4
.L1096:
        mov     rdi, QWORD PTR [rsp+32]
        lea     rax, [r8+r10]
        lea     rsi, [rdi+r10]
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r10
        setne   dil
        test    sil, dil
        je      .L1106
        add     rax, r8
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1106
        lea     rdi, [r8+rcx]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L1102:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm7, XMMWORD PTR [rdi+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [r11+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L1102
        mov     r11d, DWORD PTR [rsp+80]
        cmp     r11d, ebp
        je      .L1100
        mov     eax, DWORD PTR [rsp+56]
        lea     esi, [r11+rax]
        mov     rax, QWORD PTR [rsp+64]
        movsd   xmm0, QWORD PTR [r14+rsi*8]
        lea     rdi, [rax+rsi]
        mov     eax, DWORD PTR [rsp+72]
        add     rsi, QWORD PTR [rsp+136]
        subsd   xmm0, QWORD PTR [r14+rdi*8]
        add     rdi, QWORD PTR [rsp+64]
        addsd   xmm0, QWORD PTR [r14+rdi*8]
        addsd   xmm0, QWORD PTR [r14+rsi*8]
        add     eax, r11d
        mov     rdi, QWORD PTR [rsp+48]
        cdqe
        add     rax, QWORD PTR [rsp+208]
        movsd   QWORD PTR [rdi+rax*8], xmm0
.L1100:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L1222
.L1227:
        add     DWORD PTR [rsp+24], ebp
        mov     eax, DWORD PTR [rsp+24]
        add     r12, rbx
        add     rcx, rbx
        add     r15d, DWORD PTR [rsp+40]
        add     rdx, QWORD PTR [rsp+8]
        mov     DWORD PTR [rsp+56], eax
        add     r10, QWORD PTR [rsp+16]
        mov     DWORD PTR [rsp+72], r15d
        jmp     .L1096
.L1106:
        lea     rdi, [r8+r12]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+32]
.L1101:
        movsd   xmm0, QWORD PTR [r12+29360128+rax]
        subsd   xmm0, QWORD PTR [rdi+29360128+rax]
        addsd   xmm0, QWORD PTR [rsi+29360128+rax]
        addsd   xmm0, QWORD PTR [r11+29360128+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1101
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L1227
.L1222:
        mov     rbx, QWORD PTR [rsp+296]
        mov     r12, QWORD PTR [rsp+312]
        mov     r13, QWORD PTR [rsp+320]
        mov     r14, QWORD PTR [rsp+328]
.L983:
        mov     rbp, QWORD PTR [rsp+304]
        mov     r15, QWORD PTR [rsp+336]
        add     rsp, 344
        ret
.L1099:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L1092:
        movsd   xmm0, QWORD PTR [rcx+29360128+rax]
        addsd   xmm0, QWORD PTR [r9+29360128+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1092
        jmp     .L1091
.L1090:
        lea     rcx, [r9+rdi]
        xor     eax, eax
.L1084:
        movsd   xmm0, QWORD PTR [rcx+29360128+rax]
        addsd   xmm0, QWORD PTR [r9+29360128+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1084
        jmp     .L1083
.L1117:
        mov     r15, QWORD PTR [rsp+104]
        mov     r14, QWORD PTR [rsp+168]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L1067:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1067
        jmp     .L1066
.L1116:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L1060:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1060
        jmp     .L1059
.L1115:
        xor     eax, eax
.L1052:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1052
        jmp     .L1051
.L1114:
        xor     eax, eax
.L1044:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1044
        jmp     .L1043
.L1113:
        xor     eax, eax
.L1036:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1036
        jmp     .L1035
.L1112:
        xor     eax, eax
.L1028:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1028
        jmp     .L1027
.L1111:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L1020:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1020
        jmp     .L1019
.L1110:
        mov     r15, QWORD PTR [rsp+160]
        mov     r14, QWORD PTR [rsp+120]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L1012:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1012
        jmp     .L1011
.L1109:
        xor     eax, eax
.L1004:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r8+16777216+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1004
        jmp     .L1003
.L1223:
        test    ebp, ebp
        jle     .L983
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+328], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+56], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+32], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+312], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+296], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+320], r13
        mov     r13d, ebp
.L986:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L988:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L1107
.L992:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L990:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L990
        cmp     r11d, ebp
        je      .L987
        mov     eax, r11d
.L993:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+40]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L988
.L1207:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+56]
        add     edx, DWORD PTR [rsp+24]
        add     rbx, QWORD PTR [rsp+32]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L986
        jmp     .L1222
.L987:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L1207
        add     r10, 8
        mov     r15d, r9d
        jmp     .L992
.L1107:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L993
"strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)":
        sub     rsp, 344
        mov     QWORD PTR [rsp+304], rbp
        mov     ebp, DWORD PTR [rsp+352]
        mov     QWORD PTR [rsp+336], r15
        mov     r15d, r9d
        mov     QWORD PTR [rsp+96], rdi
        mov     QWORD PTR [rsp+40], rdx
        mov     DWORD PTR [rsp+24], ecx
        mov     QWORD PTR [rsp+56], r8
        cmp     ebp, 64
        jle     .L1468
        sar     ebp
        mov     QWORD PTR [rsp+296], rbx
        mov     rcx, rdx
        mov     r9, r8
        mov     edi, ebp
        mov     QWORD PTR [rsp+328], r14
        lea     rbx, [0+rdi*8]
        mov     QWORD PTR [rsp+240], rdi
        lea     rax, [rdx+rbx]
        mov     edx, DWORD PTR [rsp+24]
        mov     QWORD PTR [rsp+320], r13
        xor     r13d, r13d
        mov     QWORD PTR [rsp+136], rax
        mov     eax, edx
        mov     QWORD PTR [rsp+312], r12
        mov     r12d, OFFSET FLAT:"tmp_A"
        imul    eax, ebp
        mov     DWORD PTR [rsp+128], r15d
        mov     DWORD PTR [rsp+32], 0
        mov     DWORD PTR [rsp+8], 0
        cdqe
        mov     DWORD PTR [rsp+120], esi
        lea     r11, [0+rax*8]
        add     rax, rdi
        lea     r8, [0+rax*8]
        lea     rax, [r9+rbx]
        mov     QWORD PTR [rsp+72], r11
        mov     QWORD PTR [rsp+144], rax
        mov     eax, ebp
        lea     r10, [rcx+r11]
        imul    eax, r15d
        mov     QWORD PTR [rsp+152], r10
        lea     r10, [rcx+r8]
        mov     QWORD PTR [rsp+112], r10
        cdqe
        lea     r14, [0+rax*8]
        add     rax, rdi
        sal     rax, 3
        mov     QWORD PTR [rsp+64], r14
        add     r14, r9
        mov     QWORD PTR [rsp+48], rax
        add     rax, r9
        mov     QWORD PTR [rsp+104], rax
        mov     eax, ebp
        imul    eax, esi
        mov     QWORD PTR [rsp+160], r14
        xor     r14d, r14d
        cdqe
        mov     QWORD PTR [rsp+184], rax
        add     rax, rdi
        mov     QWORD PTR [rsp+192], rax
        movsxd  rax, edx
        sub     rdi, rax
        lea     rdx, [0+rax*8]
        lea     rax, [0+rdi*8]
        mov     QWORD PTR [rsp+80], rdx
        mov     rdx, rcx
        mov     r15, QWORD PTR [rsp+80]
        mov     QWORD PTR [rsp+16], rax
        mov     eax, OFFSET FLAT:"tmp_A"+8388600
        sub     rax, rcx
        mov     r9, rax
        mov     QWORD PTR [rsp+232], rax
        mov     eax, ebp
        shr     eax
        sub     r9, rbx
        mov     edi, eax
        add     eax, eax
        sub     r9, r11
        xor     r11d, r11d
        mov     DWORD PTR [rsp+88], eax
        mov     rax, r8
        sal     rdi, 4
        add     rax, r9
        je      .L1353
.L1470:
        lea     rsi, [r8+rdx]
        lea     rcx, [r12+8388608]
        xor     eax, eax
        test    r9, r9
        je      .L1353
.L1242:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1242
        mov     esi, DWORD PTR [rsp+88]
        cmp     esi, ebp
        je      .L1240
        mov     eax, DWORD PTR [rsp+8]
        mov     ecx, DWORD PTR [rsp+32]
        add     eax, esi
        add     ecx, esi
        mov     rsi, QWORD PTR [rsp+40]
        cdqe
        mov     ecx, ecx
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+112]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        movsd   QWORD PTR "tmp_A"[8388608+rcx*8], xmm0
.L1240:
        add     r11d, 1
        cmp     ebp, r11d
        je      .L1469
.L1244:
        add     r9, QWORD PTR [rsp+16]
        mov     rax, r8
        add     r13d, DWORD PTR [rsp+24]
        add     r14d, ebp
        add     rdx, r15
        add     r10, r15
        add     r12, rbx
        add     rax, r9
        mov     DWORD PTR [rsp+8], r13d
        mov     DWORD PTR [rsp+32], r14d
        jne     .L1470
.L1353:
        mov     rcx, r12
        xor     eax, eax
        sub     rcx, OFFSET FLAT:"tmp_A"
.L1241:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR "tmp_A"[rcx+8388608+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1241
        add     r11d, 1
        cmp     ebp, r11d
        jne     .L1244
.L1469:
        mov     r14d, ebp
        mov     r9, QWORD PTR [rsp+104]
        xor     r13d, r13d
        xor     r12d, r12d
        movsxd  rax, DWORD PTR [rsp+128]
        shr     r14d
        mov     r10d, OFFSET FLAT:"tmp_B"
        xor     r11d, r11d
        mov     rdx, QWORD PTR [rsp+240]
        mov     edi, r14d
        add     r14d, r14d
        mov     r15, rax
        lea     rcx, [0+rax*8]
        sal     rdi, 4
        sub     rdx, rax
        mov     QWORD PTR [rsp+88], rcx
        lea     rax, [0+rdx*8]
        mov     rdx, QWORD PTR [rsp+56]
        mov     DWORD PTR [rsp+32], r15d
        mov     r15, rcx
        mov     QWORD PTR [rsp+8], rax
        mov     eax, OFFSET FLAT:"tmp_B"+8388600
        sub     rax, rdx
        mov     QWORD PTR [rsp+224], rax
        mov     r8, rax
        sub     r8, rbx
        sub     r8, QWORD PTR [rsp+64]
.L1245:
        mov     rax, QWORD PTR [rsp+48]
        add     rax, r8
        je      .L1354
        mov     rax, QWORD PTR [rsp+48]
        lea     rcx, [r10+8388608]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1354
.L1250:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1250
        cmp     r14d, ebp
        je      .L1248
        mov     rsi, QWORD PTR [rsp+56]
        lea     eax, [r12+r14]
        lea     ecx, [r13+0+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+104]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        movsd   QWORD PTR "tmp_B"[8388608+rcx*8], xmm0
.L1248:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r8, QWORD PTR [rsp+8]
        add     r10, rbx
        cmp     ebp, r11d
        jne     .L1245
        mov     rax, QWORD PTR [rsp+56]
        mov     esi, DWORD PTR [rsp+120]
        sub     rsp, 8
        mov     r9d, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"+8388608
        mov     ecx, ebp
        mov     edx, OFFSET FLAT:"tmp_A"+8388608
        mov     r12d, ebp
        mov     QWORD PTR [rsp+136], rax
        mov     rax, QWORD PTR [rsp+48]
        mov     edi, OFFSET FLAT:"tmp_M"+14680064
        shr     r12d
        mov     DWORD PTR [rsp+48], esi
        mov     esi, ebp
        xor     r13d, r13d
        mov     QWORD PTR [rsp+128], rax
        mov     rax, QWORD PTR [rsp+104]
        mov     QWORD PTR [rsp+56], rax
        push    rbp
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     eax, ebp
        mov     esi, r12d
        xor     r9d, r9d
        imul    eax, ebp
        sal     rsi, 4
        add     r12d, r12d
        mov     DWORD PTR [rsp+220], eax
        pop     r10
        xor     r10d, r10d
        pop     r11
        mov     rdi, QWORD PTR [rsp+232]
        xor     r11d, r11d
        mov     QWORD PTR [rsp+56], rax
        sal     rax, 3
        mov     rdx, QWORD PTR [rsp+152]
        lea     rcx, "tmp_A"[rax+8388608]
        mov     QWORD PTR [rsp+96], rax
        add     rdi, rax
        mov     QWORD PTR [rsp+168], rcx
        sub     rdi, rbx
        mov     r8, rcx
        sub     rdi, QWORD PTR [rsp+72]
.L1255:
        mov     rax, rbx
        add     rax, rdi
        je      .L1355
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L1355
.L1258:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm6, XMMWORD PTR [r14+rax]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L1258
        cmp     r12d, ebp
        je      .L1256
        mov     r15, QWORD PTR [rsp+152]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+112]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1256:
        mov     rax, QWORD PTR [rsp+80]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+24]
        add     rdi, QWORD PTR [rsp+16]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L1255
        mov     r15, QWORD PTR [rsp+96]
        sub     rsp, 8
        mov     ecx, ebp
        mov     esi, ebp
        mov     r12d, ebp
        xor     r13d, r13d
        lea     rax, "tmp_M"[r15+14680064]
        shr     r12d
        mov     QWORD PTR [rsp+272], rax
        mov     rdi, rax
        push    rbp
        mov     r8, QWORD PTR [rsp+144]
        mov     rdx, QWORD PTR [rsp+184]
        mov     r9d, DWORD PTR [rsp+48]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     rdi, QWORD PTR [rsp+240]
        xor     r11d, r11d
        xor     r10d, r10d
        lea     rcx, "tmp_B"[r15+8388608]
        mov     rdx, QWORD PTR [rsp+160]
        add     rdi, r15
        mov     QWORD PTR [rsp+184], rcx
        mov     r8, rcx
        sub     rdi, rbx
        sub     rdi, QWORD PTR [rsp+80]
        pop     rsi
        mov     esi, r12d
        pop     r9
        sal     rsi, 4
        xor     r9d, r9d
        add     r12d, r12d
.L1263:
        mov     rax, QWORD PTR [rsp+64]
        add     rax, rdi
        je      .L1356
        mov     rax, QWORD PTR [rsp+64]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rdi, rdi
        je      .L1356
.L1266:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rsi
        jne     .L1266
        cmp     r12d, ebp
        je      .L1264
        mov     r15, QWORD PTR [rsp+144]
        lea     eax, [r10+r12]
        lea     r14d, [r11+r12]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+104]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1264:
        mov     rax, QWORD PTR [rsp+88]
        add     r9d, 1
        add     r11d, ebp
        add     r8, rbx
        add     r10d, DWORD PTR [rsp+32]
        add     rdi, QWORD PTR [rsp+8]
        add     rcx, rbx
        add     rdx, rax
        add     r13, rax
        cmp     ebp, r9d
        jne     .L1263
        mov     eax, DWORD PTR [rsp+204]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        mov     r14d, ebp
        xor     r13d, r13d
        xor     r12d, r12d
        add     eax, eax
        shr     r14d
        lea     r15, [0+rax*8]
        mov     DWORD PTR [rsp+280], eax
        mov     QWORD PTR [rsp+216], rax
        lea     rdi, "tmp_M"[r15+14680064]
        mov     QWORD PTR [rsp+256], r15
        push    rbp
        mov     r8, QWORD PTR [rsp+184]
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     rdi, QWORD PTR [rsp+240]
        mov     rax, r15
        xor     r11d, r11d
        lea     r15, "tmp_B"[r15+8388608]
        lea     r8, [rax+rdi]
        sub     r8, QWORD PTR [rsp+80]
        pop     rax
        mov     edi, r14d
        pop     rdx
        mov     r10, r15
        mov     rcx, r15
        mov     rdx, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+168], r15
        mov     r15, QWORD PTR [rsp+88]
        sal     rdi, 4
        add     r14d, r14d
        mov     r9, QWORD PTR [rsp+160]
.L1271:
        mov     rax, QWORD PTR [rsp+64]
        add     rax, r8
        je      .L1357
        mov     rax, QWORD PTR [rsp+64]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1357
.L1274:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm4, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1274
        cmp     r14d, ebp
        je      .L1272
        mov     rsi, QWORD PTR [rsp+160]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1272:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+32]
        add     r9, r15
        add     rdx, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1271
        mov     eax, DWORD PTR [rsp+272]
        sub     rsp, 8
        mov     r9d, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+212]
        mov     r8, QWORD PTR [rsp+176]
        xor     r12d, r12d
        mov     QWORD PTR [rsp+184], rax
        sal     rax, 3
        mov     QWORD PTR [rsp+224], rax
        lea     rdi, "tmp_M"[rax+14680064]
        push    rbp
        mov     ecx, DWORD PTR [rsp+40]
        mov     rdx, QWORD PTR [rsp+128]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     rax, QWORD PTR [rsp+264]
        mov     rdi, QWORD PTR [rsp+248]
        xor     r11d, r11d
        pop     r13
        pop     r14
        mov     r14d, ebp
        xor     r13d, r13d
        lea     r15, "tmp_A"[rax+8388608]
        shr     r14d
        lea     r8, [rax+rdi]
        mov     r9, QWORD PTR [rsp+136]
        mov     edi, r14d
        mov     r10, r15
        mov     rcx, r15
        mov     rdx, QWORD PTR [rsp+120]
        mov     QWORD PTR [rsp+168], r15
        mov     r15, QWORD PTR [rsp+80]
        sub     r8, rbx
        sal     rdi, 4
        add     r14d, r14d
.L1279:
        mov     rax, rbx
        add     rax, r8
        je      .L1358
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1358
.L1282:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L1282
        cmp     r14d, ebp
        je      .L1280
        mov     rsi, QWORD PTR [rsp+120]
        lea     eax, [r12+r14]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+136]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        lea     esi, [r13+0+r14]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1280:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     rdx, r15
        add     r9, r15
        add     r13d, ebp
        add     r10, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1279
        mov     eax, DWORD PTR [rsp+204]
        sub     rsp, 8
        mov     ecx, ebp
        mov     esi, ebp
        mov     rdx, QWORD PTR [rsp+176]
        mov     r15d, ebp
        xor     r14d, r14d
        sal     eax, 2
        shr     r15d
        mov     DWORD PTR [rsp+284], eax
        lea     rdi, "tmp_M"[14680064+rax*8]
        push    rbp
        mov     r9d, DWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+120]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     rdx, QWORD PTR [rsp+232]
        mov     rdi, QWORD PTR [rsp+248]
        mov     r10, QWORD PTR [rsp+168]
        lea     rax, "tmp_A"[rdx+8388608]
        add     rdi, rdx
        mov     QWORD PTR [rsp+248], rdi
        mov     r8, rdi
        sub     r8, QWORD PTR [rsp+88]
        mov     edi, r15d
        mov     r9, rax
        mov     rcx, rax
        sal     rdi, 4
        add     r15d, r15d
        mov     QWORD PTR [rsp+184], rax
        mov     QWORD PTR [rsp+272], rax
        pop     r11
        xor     r11d, r11d
        pop     r12
        mov     rdx, QWORD PTR [rsp+120]
        xor     r12d, r12d
        mov     QWORD PTR [rsp+248], rax
        mov     r13, QWORD PTR [rsp+80]
.L1287:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, r8
        je      .L1359
        mov     rax, QWORD PTR [rsp+72]
        lea     rsi, [rax+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1359
.L1290:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm6
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L1290
        cmp     r15d, ebp
        je      .L1288
        mov     rsi, QWORD PTR [rsp+152]
        lea     eax, [r12+r15]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+120]
        subsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        lea     esi, [r14+r15]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1288:
        add     r11d, 1
        add     r12d, DWORD PTR [rsp+24]
        add     r10, r13
        add     rdx, r13
        add     r14d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+16]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1287
        mov     rdx, QWORD PTR [rsp+216]
        mov     r12, QWORD PTR [rsp+88]
        xor     r15d, r15d
        xor     r14d, r14d
        mov     rax, QWORD PTR [rsp+224]
        mov     r13, QWORD PTR [rsp+248]
        xor     r11d, r11d
        lea     rdi, "tmp_B"[rdx+8388608]
        mov     r10, QWORD PTR [rsp+144]
        add     rax, rdx
        mov     r9, rdi
        mov     QWORD PTR [rsp+120], rdi
        mov     rcx, rdi
        sub     rax, rbx
        mov     QWORD PTR [rsp+280], r9
        mov     rdx, QWORD PTR [rsp+128]
        mov     QWORD PTR [rsp+152], rax
        mov     r8, rax
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+248], rdi
        mov     edi, eax
        mov     QWORD PTR [rsp+224], r13
        lea     r13d, [rax+rax]
        sal     rdi, 4
.L1295:
        mov     rax, rbx
        add     rax, r8
        je      .L1360
        lea     rsi, [rbx+rdx]
        xor     eax, eax
        test    r8, r8
        je      .L1360
.L1298:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm7
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rdi
        jne     .L1298
        cmp     r13d, ebp
        je      .L1296
        mov     rsi, QWORD PTR [rsp+128]
        lea     eax, [r14+r13]
        cdqe
        movsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rsi, QWORD PTR [rsp+144]
        addsd   xmm0, QWORD PTR [rsi+rax*8]
        mov     rax, QWORD PTR [rsp+120]
        lea     esi, [r15+r13]
        movsd   QWORD PTR [rax+rsi*8], xmm0
.L1296:
        add     r11d, 1
        add     r14d, DWORD PTR [rsp+32]
        add     rdx, r12
        add     r10, r12
        add     r15d, ebp
        add     r9, rbx
        add     r8, QWORD PTR [rsp+8]
        add     rcx, rbx
        cmp     ebp, r11d
        jne     .L1295
        mov     eax, DWORD PTR [rsp+276]
        sub     rsp, 8
        mov     r9d, ebp
        mov     ecx, ebp
        add     eax, DWORD PTR [rsp+212]
        mov     r13, QWORD PTR [rsp+232]
        mov     esi, ebp
        mov     r12, QWORD PTR [rsp+288]
        mov     QWORD PTR [rsp+136], rax
        lea     rdi, "tmp_M"[14680064+rax*8]
        push    rbp
        mov     r8, QWORD PTR [rsp+136]
        mov     rdx, QWORD PTR [rsp+184]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        mov     r10d, ebp
        xor     r11d, r11d
        xor     r9d, r9d
        mov     rsi, QWORD PTR [rsp+248]
        mov     rdx, QWORD PTR [rsp+152]
        shr     r10d
        xor     r8d, r8d
        sub     rsi, rbx
        sub     rsi, QWORD PTR [rsp+88]
        pop     rcx
        mov     ecx, r10d
        pop     rdi
        sal     rcx, 4
        xor     edi, edi
        add     r10d, r10d
        mov     QWORD PTR [rsp+144], r12
        mov     r12, QWORD PTR [rsp+256]
.L1303:
        mov     rax, QWORD PTR [rsp+72]
        add     rax, rsi
        je      .L1361
        mov     rax, QWORD PTR [rsp+72]
        lea     r14, [rax+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L1361
.L1306:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [r14+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [r13+0+rax], xmm0
        add     rax, 16
        cmp     rcx, rax
        jne     .L1306
        cmp     r10d, ebp
        je      .L1304
        mov     r15, QWORD PTR [rsp+136]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+112]
        subsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+168]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1304:
        mov     rax, QWORD PTR [rsp+80]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+24]
        add     r9d, ebp
        add     r12, rbx
        add     rsi, QWORD PTR [rsp+16]
        add     r13, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L1303
        mov     r10d, ebp
        mov     r12, QWORD PTR [rsp+144]
        xor     r11d, r11d
        xor     edi, edi
        shr     r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rdx, QWORD PTR [rsp+160]
        mov     ecx, r10d
        mov     r13, QWORD PTR [rsp+248]
        add     r10d, r10d
        mov     rsi, QWORD PTR [rsp+152]
        sal     rcx, 4
        sub     rsi, QWORD PTR [rsp+64]
.L1308:
        mov     rax, rbx
        add     rax, rsi
        je      .L1362
        lea     r14, [rbx+rdx]
        xor     eax, eax
        test    rsi, rsi
        je      .L1362
.L1313:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [r12+rax], xmm0
        add     rax, 16
        cmp     rax, rcx
        jne     .L1313
        cmp     r10d, ebp
        je      .L1311
        mov     r15, QWORD PTR [rsp+104]
        lea     eax, [r8+r10]
        lea     r14d, [r9+r10]
        cdqe
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r15, QWORD PTR [rsp+160]
        addsd   xmm0, QWORD PTR [r15+rax*8]
        mov     rax, QWORD PTR [rsp+120]
        movsd   QWORD PTR [rax+r14*8], xmm0
.L1311:
        mov     rax, QWORD PTR [rsp+88]
        add     edi, 1
        add     r8d, DWORD PTR [rsp+32]
        add     r9d, ebp
        add     r13, rbx
        add     rsi, QWORD PTR [rsp+8]
        add     r12, rbx
        add     rdx, rax
        add     r11, rax
        cmp     ebp, edi
        jne     .L1308
        mov     eax, DWORD PTR [rsp+272]
        sub     rsp, 8
        mov     esi, ebp
        mov     r9d, ebp
        add     eax, DWORD PTR [rsp+212]
        mov     ecx, ebp
        xor     r14d, r14d
        xor     r13d, r13d
        add     eax, eax
        mov     eax, eax
        lea     r15, [0+rax*8]
        mov     QWORD PTR [rsp+88], rax
        mov     QWORD PTR [rsp+112], r15
        lea     rdi, "tmp_M"[r15+14680064]
        push    rbp
        mov     rdx, QWORD PTR [rsp+184]
        mov     r8, QWORD PTR [rsp+136]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.2.isra.0)"
        movsxd  rax, DWORD PTR [rsp+56]
        lea     rdi, [0+rax*8]
        sub     rax, QWORD PTR [rsp+256]
        sal     rax, 3
        mov     QWORD PTR [rsp+24], rdi
        mov     rdi, QWORD PTR [rsp+64]
        mov     QWORD PTR [rsp+32], rax
        mov     rax, QWORD PTR [rsp+72]
        lea     r12, [rdi-14680072]
        mov     rdx, rax
        sal     rax, 5
        mov     QWORD PTR [rsp+104], r12
        sub     r12, r15
        sal     rdx, 4
        mov     rsi, rax
        xor     r15d, r15d
        mov     QWORD PTR [rsp+88], rdx
        pop     rax
        mov     eax, ebp
        pop     rdx
        shr     eax
        mov     r10, QWORD PTR [rsp+216]
        mov     edx, OFFSET FLAT:"tmp_M"+14680064
        mov     DWORD PTR [rsp+32], 0
        mov     r11d, eax
        mov     DWORD PTR [rsp+24], 0
        sal     r11, 4
        mov     QWORD PTR [rsp+112], OFFSET FLAT:"tmp_M"+14680064
        mov     QWORD PTR [rsp+64], rbx
        lea     ebx, [rax+rax]
.L1318:
        lea     rcx, [r10+r12]
        mov     rax, rcx
        sub     rax, QWORD PTR [rsp+96]
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   r8b
        cmp     rcx, OFFSET FLAT:"tmp_M"
        setne   cl
        and     ecx, r8d
        cmp     r12, OFFSET FLAT:"tmp_M"
        setne   r8b
        test    cl, r8b
        je      .L1327
        add     rax, rsi
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1327
        mov     rax, QWORD PTR [rsp+96]
        lea     r8, [r10+rdx]
        lea     rcx, [rax+r8]
        mov     rax, QWORD PTR [rsp+72]
        lea     r9, [rcx+rax]
        xor     eax, eax
.L1321:
        movupd  xmm0, XMMWORD PTR [r8+rax]
        movupd  xmm6, XMMWORD PTR [rdx+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [r9+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movups  XMMWORD PTR [rdi+rax], xmm0
        add     rax, 16
        cmp     r11, rax
        jne     .L1321
        cmp     ebx, ebp
        je      .L1319
        mov     eax, DWORD PTR [rsp+24]
        mov     rcx, QWORD PTR [rsp+176]
        mov     r8d, DWORD PTR [rsp+32]
        add     eax, ebx
        mov     eax, eax
        add     r8d, ebx
        add     rcx, rax
        movsxd  r8, r8d
        movsd   xmm0, QWORD PTR "tmp_M"[14680064+rcx*8]
        add     rcx, QWORD PTR [rsp+56]
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rax*8]
        add     rax, QWORD PTR [rsp+80]
        subsd   xmm0, QWORD PTR "tmp_M"[14680064+rcx*8]
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rax+r8*8], xmm0
.L1319:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L1471
.L1323:
        add     r15d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     rdi, QWORD PTR [rsp+8]
        add     r12, QWORD PTR [rsp+16]
        add     rdx, QWORD PTR [rsp+64]
        mov     DWORD PTR [rsp+24], r15d
        mov     DWORD PTR [rsp+32], r14d
        jmp     .L1318
.L1327:
        mov     rcx, QWORD PTR [rsp+64]
        mov     r9, QWORD PTR [rsp+104]
        lea     rax, [rdx-14680064]
        lea     r8, [rcx-14680064+rdx]
        mov     rcx, rdi
.L1320:
        movsd   xmm0, QWORD PTR [rax+14680064+r10]
        addsd   xmm0, QWORD PTR [rax+14680064]
        add     rax, 8
        add     rcx, 8
        subsd   xmm0, QWORD PTR [rax+14680056+rsi]
        addsd   xmm0, QWORD PTR [rax+14680056+r9]
        movsd   QWORD PTR [rcx-8], xmm0
        cmp     rax, r8
        jne     .L1320
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L1323
.L1471:
        mov     rcx, QWORD PTR [rsp+112]
        mov     rbx, QWORD PTR [rsp+64]
        mov     r10d, ebp
        xor     r12d, r12d
        mov     rdi, QWORD PTR [rsp+88]
        mov     r13, QWORD PTR [rsp+56]
        shr     r10d
        xor     r11d, r11d
        mov     rax, QWORD PTR [rsp+48]
        mov     QWORD PTR [rsp+32], rcx
        xor     r9d, r9d
        lea     r15d, [r10+r10]
        lea     r8, [rbx+rdi]
        neg     r13
        mov     edi, r10d
        sub     r8, QWORD PTR [rsp+72]
        add     rax, rbx
        lea     rdx, "tmp_M"[rsi+14680064]
        sal     r13, 4
        sal     rdi, 4
.L1324:
        lea     rcx, [r8+r13]
        cmp     rcx, OFFSET FLAT:"tmp_M"
        je      .L1335
        lea     r10, [r13+0+rdx]
        xor     ecx, ecx
        cmp     r8, OFFSET FLAT:"tmp_M"
        je      .L1335
.L1330:
        movupd  xmm0, XMMWORD PTR [rdx+rcx]
        movupd  xmm5, XMMWORD PTR [r10+rcx]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rax+rcx], xmm0
        add     rcx, 16
        cmp     rdi, rcx
        jne     .L1330
        cmp     r15d, ebp
        je      .L1328
        mov     r14, QWORD PTR [rsp+208]
        lea     ecx, [r11+r15]
        lea     r10d, [r12+r15]
        movsxd  r10, r10d
        add     rcx, r14
        mov     QWORD PTR [rsp+24], rcx
        mov     rcx, QWORD PTR [rsp+48]
        lea     r10, [rcx+r10*8]
        mov     rcx, QWORD PTR [rsp+24]
        add     r14, rcx
        movsd   xmm0, QWORD PTR "tmp_M"[14680064+r14*8]
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rcx*8]
        movsd   QWORD PTR [r10+rbx], xmm0
.L1328:
        add     r9d, 1
        add     r11d, ebp
        add     rsi, rbx
        add     r12d, DWORD PTR [rsp+40]
        add     rax, QWORD PTR [rsp+8]
        add     r8, QWORD PTR [rsp+16]
        add     rdx, rbx
        cmp     ebp, r9d
        jne     .L1324
        mov     rdi, QWORD PTR [rsp+88]
        mov     r14d, ebp
        mov     r8, QWORD PTR [rsp+96]
        xor     r13d, r13d
        shr     r14d
        mov     r10, QWORD PTR [rsp+72]
        xor     r12d, r12d
        xor     r11d, r11d
        mov     rax, QWORD PTR [rsp+184]
        mov     esi, r14d
        add     r14d, r14d
        sal     rsi, 4
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        add     rdi, rdx
        sub     rdi, QWORD PTR [rsp+216]
        add     rax, rdx
        mov     rdx, QWORD PTR [rsp+264]
.L1340:
        lea     rcx, [rdi+r10]
        cmp     rcx, OFFSET FLAT:"tmp_M"
        je      .L1344
        lea     r9, [rdx+r10]
        xor     ecx, ecx
        cmp     rdi, OFFSET FLAT:"tmp_M"
        je      .L1344
.L1338:
        movupd  xmm0, XMMWORD PTR [r9+rcx]
        movupd  xmm6, XMMWORD PTR [rdx+rcx]
        addpd   xmm0, xmm6
        movups  XMMWORD PTR [rax+rcx], xmm0
        add     rcx, 16
        cmp     rsi, rcx
        jne     .L1338
        cmp     r14d, ebp
        je      .L1336
        mov     r15, QWORD PTR [rsp+184]
        lea     r9d, [r13+0+r14]
        lea     ecx, [r12+r14]
        movsxd  r9, r9d
        add     r15, r9
        mov     QWORD PTR [rsp+24], r15
        mov     r15, QWORD PTR [rsp+176]
        add     r15, rcx
        add     rcx, QWORD PTR [rsp+56]
        movsd   xmm0, QWORD PTR "tmp_M"[14680064+r15*8]
        mov     r15, QWORD PTR [rsp+24]
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rcx*8]
        mov     rcx, QWORD PTR [rsp+48]
        movsd   QWORD PTR [rcx+r15*8], xmm0
.L1336:
        add     r11d, 1
        add     r12d, ebp
        add     r8, rbx
        add     r13d, DWORD PTR [rsp+40]
        add     rax, QWORD PTR [rsp+8]
        add     rdi, QWORD PTR [rsp+16]
        add     rdx, rbx
        cmp     ebp, r11d
        jne     .L1340
        mov     rdi, QWORD PTR [rsp+48]
        mov     r10, QWORD PTR [rsp+88]
        xor     r14d, r14d
        xor     r12d, r12d
        mov     rcx, QWORD PTR [rsp+32]
        mov     r8, QWORD PTR [rsp+96]
        xor     r15d, r15d
        xor     r13d, r13d
        mov     rax, QWORD PTR [rsp+192]
        mov     DWORD PTR [rsp+64], 0
        mov     DWORD PTR [rsp+32], 0
        sal     rax, 3
        add     r10, rax
        lea     rdx, [rdi+rax]
        mov     rax, QWORD PTR [rsp+56]
        sub     r10, QWORD PTR [rsp+72]
        lea     rsi, [0+rax*4]
        sub     rax, rsi
        lea     r11, [0+rax*8]
        mov     eax, ebp
        shr     eax
        mov     QWORD PTR [rsp+24], r11
        mov     r9d, eax
        add     eax, eax
        mov     DWORD PTR [rsp+72], eax
        sal     r9, 4
.L1341:
        mov     rdi, QWORD PTR [rsp+24]
        lea     rax, [r8+r10]
        lea     rsi, [rdi+r10]
        cmp     rsi, OFFSET FLAT:"tmp_M"
        setne   dil
        cmp     rax, OFFSET FLAT:"tmp_M"
        setne   sil
        and     esi, edi
        mov     edi, OFFSET FLAT:"tmp_M"
        cmp     rdi, r10
        setne   dil
        test    sil, dil
        je      .L1351
        add     rax, r8
        cmp     rax, OFFSET FLAT:"tmp_M"
        je      .L1351
        lea     rdi, [r8+rcx]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+24]
.L1347:
        movupd  xmm0, XMMWORD PTR [rcx+rax]
        movupd  xmm7, XMMWORD PTR [rdi+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [r11+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, r9
        jne     .L1347
        mov     r11d, DWORD PTR [rsp+72]
        cmp     r11d, ebp
        je      .L1345
        mov     eax, DWORD PTR [rsp+32]
        mov     rdi, QWORD PTR [rsp+56]
        add     eax, r11d
        mov     eax, eax
        movsd   xmm0, QWORD PTR "tmp_M"[14680064+rax*8]
        lea     rsi, [rdi+rax]
        add     rax, QWORD PTR [rsp+128]
        subsd   xmm0, QWORD PTR "tmp_M"[14680064+rsi*8]
        mov     edi, DWORD PTR [rsp+64]
        add     rsi, QWORD PTR [rsp+56]
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rsi*8]
        add     edi, r11d
        addsd   xmm0, QWORD PTR "tmp_M"[14680064+rax*8]
        mov     rax, QWORD PTR [rsp+48]
        movsxd  rdi, edi
        add     rdi, QWORD PTR [rsp+192]
        movsd   QWORD PTR [rax+rdi*8], xmm0
.L1345:
        add     r13d, 1
        cmp     ebp, r13d
        je      .L1467
.L1472:
        add     r15d, ebp
        add     r14d, DWORD PTR [rsp+40]
        add     r12, rbx
        add     rdx, QWORD PTR [rsp+8]
        mov     DWORD PTR [rsp+32], r15d
        add     r10, QWORD PTR [rsp+16]
        add     rcx, rbx
        mov     DWORD PTR [rsp+64], r14d
        jmp     .L1341
.L1351:
        lea     rdi, [r8+r12]
        xor     eax, eax
        lea     rsi, [r8+rdi]
        mov     r11, rsi
        sub     r11, QWORD PTR [rsp+24]
.L1346:
        movsd   xmm0, QWORD PTR "tmp_M"[r12+14680064+rax]
        subsd   xmm0, QWORD PTR "tmp_M"[rdi+14680064+rax]
        addsd   xmm0, QWORD PTR "tmp_M"[rsi+14680064+rax]
        addsd   xmm0, QWORD PTR "tmp_M"[r11+14680064+rax]
        movsd   QWORD PTR [rdx+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1346
        add     r13d, 1
        cmp     ebp, r13d
        jne     .L1472
.L1467:
        mov     rbx, QWORD PTR [rsp+296]
        mov     r12, QWORD PTR [rsp+312]
        mov     r13, QWORD PTR [rsp+320]
        mov     r14, QWORD PTR [rsp+328]
.L1228:
        mov     rbp, QWORD PTR [rsp+304]
        mov     r15, QWORD PTR [rsp+336]
        add     rsp, 344
        ret
.L1344:
        lea     r9, [r8+r10]
        xor     ecx, ecx
.L1337:
        movsd   xmm0, QWORD PTR "tmp_M"[r9+14680064+rcx]
        addsd   xmm0, QWORD PTR "tmp_M"[r8+14680064+rcx]
        movsd   QWORD PTR [rax+rcx], xmm0
        add     rcx, 8
        cmp     rbx, rcx
        jne     .L1337
        jmp     .L1336
.L1335:
        lea     r10, [rsi+r13]
        xor     ecx, ecx
.L1329:
        movsd   xmm0, QWORD PTR "tmp_M"[rsi+14680064+rcx]
        addsd   xmm0, QWORD PTR "tmp_M"[r10+14680064+rcx]
        movsd   QWORD PTR [rax+rcx], xmm0
        add     rcx, 8
        cmp     rbx, rcx
        jne     .L1329
        jmp     .L1328
.L1362:
        mov     r15, QWORD PTR [rsp+104]
        mov     r14, QWORD PTR [rsp+160]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L1312:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r13+0+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1312
        jmp     .L1311
.L1361:
        mov     r15, QWORD PTR [rsp+136]
        mov     r14, QWORD PTR [rsp+112]
        xor     eax, eax
        add     r15, r11
        add     r14, r11
.L1305:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r12+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1305
        jmp     .L1304
.L1360:
        xor     eax, eax
.L1297:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r10+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1297
        jmp     .L1296
.L1359:
        xor     eax, eax
.L1289:
        movsd   xmm0, QWORD PTR [r10+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r9+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1289
        jmp     .L1288
.L1358:
        xor     eax, eax
.L1281:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1281
        jmp     .L1280
.L1357:
        xor     eax, eax
.L1273:
        movsd   xmm0, QWORD PTR [r9+rax]
        subsd   xmm0, QWORD PTR [rdx+rax]
        movsd   QWORD PTR [r10+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1273
        jmp     .L1272
.L1356:
        mov     r15, QWORD PTR [rsp+144]
        mov     r14, QWORD PTR [rsp+104]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L1265:
        movsd   xmm0, QWORD PTR [r15+rax]
        subsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1265
        jmp     .L1264
.L1355:
        mov     r15, QWORD PTR [rsp+152]
        mov     r14, QWORD PTR [rsp+112]
        xor     eax, eax
        add     r15, r13
        add     r14, r13
.L1257:
        movsd   xmm0, QWORD PTR [r15+rax]
        addsd   xmm0, QWORD PTR [r14+rax]
        movsd   QWORD PTR [r8+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1257
        jmp     .L1256
.L1354:
        mov     rcx, r10
        xor     eax, eax
        sub     rcx, OFFSET FLAT:"tmp_B"
.L1249:
        movsd   xmm0, QWORD PTR [rdx+rax]
        addsd   xmm0, QWORD PTR [r9+rax]
        movsd   QWORD PTR "tmp_B"[rcx+8388608+rax], xmm0
        add     rax, 8
        cmp     rbx, rax
        jne     .L1249
        jmp     .L1248
.L1468:
        test    ebp, ebp
        jle     .L1228
        movsxd  rax, esi
        mov     r11d, ebp
        movsxd  rsi, r9d
        mov     DWORD PTR [rsp+8], r9d
        mov     QWORD PTR [rsp+328], r14
        lea     r14, [0+rax*8]
        movsxd  rax, ecx
        shr     r11d
        sal     rax, 3
        mov     QWORD PTR [rsp+64], r14
        mov     rcx, r8
        xor     r14d, r14d
        mov     QWORD PTR [rsp+32], rax
        mov     eax, r11d
        add     r11d, r11d
        sal     rax, 4
        mov     QWORD PTR [rsp+312], r12
        mov     r12, rdi
        mov     rdi, rsi
        mov     QWORD PTR [rsp+48], rax
        sal     rdi, 4
        mov     QWORD PTR [rsp+296], rbx
        mov     rbx, rdx
        xor     edx, edx
        mov     QWORD PTR [rsp+320], r13
        mov     r13d, ebp
.L1231:
        mov     rax, QWORD PTR [rsp+48]
        mov     DWORD PTR [rsp+16], r14d
        mov     r10, rcx
        xor     r9d, r9d
        lea     r8, [rax+rbx]
.L1233:
        mov     r15d, r9d
        cmp     ebp, 1
        je      .L1352
.L1237:
        mov     r14, rbx
        mov     rax, r10
        pxor    xmm1, xmm1
.L1235:
        movupd  xmm3, XMMWORD PTR [r14]
        movsd   xmm0, QWORD PTR [rax]
        movhpd  xmm0, QWORD PTR [rax+rsi*8]
        add     rax, rdi
        add     r14, 16
        mulpd   xmm0, xmm3
        addsd   xmm1, xmm0
        unpckhpd        xmm0, xmm0
        addsd   xmm1, xmm0
        cmp     r14, r8
        jne     .L1235
        cmp     r11d, ebp
        je      .L1232
        mov     eax, r11d
.L1238:
        mov     r14d, DWORD PTR [rsp+8]
        add     r10, 8
        imul    r14d, eax
        add     eax, edx
        cdqe
        add     r14d, r15d
        mov     r15, QWORD PTR [rsp+40]
        movsxd  r14, r14d
        movsd   xmm0, QWORD PTR [rcx+r14*8]
        mulsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [r12+r9*8], xmm0
        add     r9, 1
        cmp     r9, r13
        jne     .L1233
.L1452:
        mov     r14d, DWORD PTR [rsp+16]
        add     r12, QWORD PTR [rsp+64]
        add     edx, DWORD PTR [rsp+24]
        add     rbx, QWORD PTR [rsp+32]
        add     r14d, 1
        cmp     ebp, r14d
        jne     .L1231
        jmp     .L1467
.L1232:
        movsd   QWORD PTR [r12+r9*8], xmm1
        add     r9, 1
        cmp     r13, r9
        je      .L1452
        add     r10, 8
        mov     r15d, r9d
        jmp     .L1237
.L1352:
        pxor    xmm1, xmm1
        xor     eax, eax
        jmp     .L1238
.LC1:
        .string "n,method,run,seconds,gflops,maxdiff"
.LC6:
        .string "naive"
.LC7:
        .string "%d,%s,%d,%.6f,%.3f,%.3e\n"
.LC8:
        .string "strassen"
"main":
        push    r15
        mov     edi, OFFSET FLAT:.LC1
        movabs  rax, 4398046511616
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 248
        mov     QWORD PTR [rsp+216], rax
        lea     r13, [rsp+208]
        mov     DWORD PTR [rsp+212], 256
        call    "puts"
        mov     edx, 128
.L1589:
        mov     DWORD PTR "n"[rip], edx
        test    edx, edx
        jle     .L1474
        xor     ebp, ebp
        xor     r12d, r12d
.L1476:
        xor     ebx, ebx
.L1475:
        call    "rand"
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, eax
        divsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR "a"[rbp+rbx*8], xmm0
        call    "rand"
        pxor    xmm0, xmm0
        mov     edx, DWORD PTR "n"[rip]
        cvtsi2sd        xmm0, eax
        divsd   xmm0, QWORD PTR .LC2[rip]
        movsd   QWORD PTR "b"[rbp+rbx*8], xmm0
        add     rbx, 1
        cmp     edx, ebx
        jg      .L1475
        add     r12d, 1
        add     rbp, 8192
        cmp     edx, r12d
        jg      .L1476
        test    edx, edx
        jle     .L1474
        mov     ecx, edx
        mov     r10d, edx
        mov     r9d, OFFSET FLAT:"ref"
        mov     r8d, OFFSET FLAT:"a"
        mov     rbx, rcx
        shr     r10d
        sal     rbx, 13
        mov     r11d, r10d
        sal     rcx, 10
        add     r10d, r10d
        lea     rbp, [rbx+r9]
        sal     r11, 4
.L1477:
        cmp     edx, 1
        je      .L1590
.L1483:
        lea     r15, [r11+r9]
        lea     rdi, "b"[rbx]
        mov     r12, r9
        mov     r14d, OFFSET FLAT:"b"
.L1479:
        mov     rsi, r8
        mov     rax, r14
        pxor    xmm1, xmm1
.L1478:
        movsd   xmm0, QWORD PTR [rsi]
        add     rax, 8192
        add     rsi, 8
        unpcklpd        xmm0, xmm0
        mulpd   xmm0, XMMWORD PTR [rax-8192]
        addpd   xmm1, xmm0
        cmp     rax, rdi
        jne     .L1478
        movaps  XMMWORD PTR [r12], xmm1
        add     r12, 16
        add     r14, 16
        lea     rdi, [rax+16]
        cmp     r12, r15
        jne     .L1479
        cmp     edx, r10d
        je      .L1480
        mov     r12d, r10d
.L1484:
        lea     rsi, [r12+rcx]
        lea     rax, "b"[0+r12*8]
        pxor    xmm1, xmm1
        lea     rdi, "b"[0+rsi*8]
        mov     rsi, r8
.L1481:
        movsd   xmm0, QWORD PTR [rsi]
        mulsd   xmm0, QWORD PTR [rax]
        add     rax, 8192
        add     rsi, 8
        addsd   xmm1, xmm0
        cmp     rax, rdi
        jne     .L1481
        movsd   QWORD PTR [r9+r12*8], xmm1
        add     r9, 8192
        add     r8, 8192
        cmp     r9, rbp
        jne     .L1477
.L1474:
        mov     ebx, 1
        mov     r14, r13
.L1485:
        test    edx, edx
        jle     .L1502
        mov     ebp, edx
        mov     ecx, OFFSET FLAT:"c"
        mov     r12, rbp
        sal     rbp, 3
        sal     r12, 13
        add     r12, rcx
.L1486:
        mov     rdi, rcx
        mov     rdx, rbp
        xor     esi, esi
        call    "memset"
        lea     rcx, [rax+8192]
        cmp     rcx, r12
        jne     .L1486
.L1502:
        lea     rsi, [rsp+224]
        mov     edi, 1
        call    "clock_gettime"
        pxor    xmm0, xmm0
        pxor    xmm1, xmm1
        cvtsi2sd        xmm0, QWORD PTR [rsp+232]
        mulsd   xmm0, QWORD PTR .LC3[rip]
        mov     r10d, DWORD PTR "n"[rip]
        cvtsi2sd        xmm1, QWORD PTR [rsp+224]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rsp+8], xmm0
        test    r10d, r10d
        jle     .L1487
        mov     eax, r10d
        mov     r11d, r10d
        mov     edx, OFFSET FLAT:"c"
        mov     ecx, ebx
        mov     r12, rax
        shr     r11d
        mov     r8d, OFFSET FLAT:"a"
        sal     r12, 13
        mov     ebp, r11d
        sal     rax, 10
        add     r11d, r11d
        lea     r13, [r12+rdx]
        sal     rbp, 4
.L1488:
        cmp     r10d, 1
        je      .L1591
        mov     DWORD PTR [rsp+4], ecx
.L1494:
        lea     r15, [rbp+0+rdx]
        lea     rdi, "b"[r12]
        mov     r9, rdx
        mov     ebx, OFFSET FLAT:"b"
.L1490:
        mov     rsi, r8
        mov     rcx, rbx
        pxor    xmm1, xmm1
.L1489:
        movsd   xmm0, QWORD PTR [rsi]
        add     rcx, 8192
        add     rsi, 8
        unpcklpd        xmm0, xmm0
        mulpd   xmm0, XMMWORD PTR [rcx-8192]
        addpd   xmm1, xmm0
        cmp     rcx, rdi
        jne     .L1489
        movaps  XMMWORD PTR [r9], xmm1
        add     r9, 16
        add     rbx, 16
        lea     rdi, [rcx+16]
        cmp     r9, r15
        jne     .L1490
        cmp     r10d, r11d
        je      .L1491
        mov     ecx, DWORD PTR [rsp+4]
        mov     ebx, r11d
.L1495:
        lea     rdi, [rbx+rax]
        lea     rsi, "b"[0+rbx*8]
        pxor    xmm1, xmm1
        lea     r9, "b"[0+rdi*8]
        mov     rdi, r8
.L1492:
        movsd   xmm0, QWORD PTR [rdi]
        mulsd   xmm0, QWORD PTR [rsi]
        add     rsi, 8192
        add     rdi, 8
        addsd   xmm1, xmm0
        cmp     rsi, r9
        jne     .L1492
        movsd   QWORD PTR [rdx+rbx*8], xmm1
        add     rdx, 8192
        add     r8, 8192
        cmp     rdx, r13
        jne     .L1488
        mov     ebx, ecx
.L1487:
        mov     edi, 1
        lea     rsi, [rsp+224]
        call    "clock_gettime"
        pxor    xmm0, xmm0
        mov     edi, DWORD PTR "n"[rip]
        cvtsi2sd        xmm0, QWORD PTR [rsp+232]
        mulsd   xmm0, QWORD PTR .LC3[rip]
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, QWORD PTR [rsp+224]
        addsd   xmm0, xmm1
        subsd   xmm0, QWORD PTR [rsp+8]
        test    edi, edi
        jle     .L1592
        mov     ecx, edi
        xor     edx, edx
        pxor    xmm2, xmm2
        mov     rsi, rcx
        sal     rcx, 3
        sal     rsi, 13
.L1497:
        xor     eax, eax
.L1500:
        movsd   xmm7, QWORD PTR "c"[rdx+rax]
        movapd  xmm3, xmm7
        subsd   xmm3, QWORD PTR "ref"[rdx+rax]
        andpd   xmm3, XMMWORD PTR .LC4[rip]
        add     rax, 8
        maxsd   xmm3, xmm2
        movapd  xmm2, xmm3
        cmp     rcx, rax
        jne     .L1500
        add     rdx, 8192
        cmp     rsi, rdx
        jne     .L1497
.L1496:
        pxor    xmm3, xmm3
        mov     ecx, ebx
        mov     esi, edi
        mov     edx, OFFSET FLAT:.LC6
        cvtsi2sd        xmm3, edi
        movapd  xmm1, xmm3
        mov     edi, OFFSET FLAT:.LC7
        add     ebx, 1
        addsd   xmm1, xmm3
        mov     eax, 3
        mulsd   xmm1, xmm3
        mulsd   xmm1, xmm3
        divsd   xmm1, xmm0
        divsd   xmm1, QWORD PTR .LC5[rip]
        call    "printf"
        cmp     ebx, 6
        je      .L1593
        mov     edx, DWORD PTR "n"[rip]
        jmp     .L1485
.L1491:
        add     rdx, 8192
        cmp     rdx, r13
        je      .L1652
        add     r8, 8192
        jmp     .L1494
.L1591:
        xor     ebx, ebx
        jmp     .L1495
.L1593:
        mov     DWORD PTR [rsp+100], 1
        mov     QWORD PTR [rsp+184], r14
.L1501:
        mov     ebx, DWORD PTR "n"[rip]
        test    ebx, ebx
        jle     .L1503
        mov     rbp, rbx
        mov     ecx, OFFSET FLAT:"c"
        sal     rbx, 3
        sal     rbp, 13
        add     rbp, rcx
.L1504:
        mov     rdi, rcx
        mov     rdx, rbx
        xor     esi, esi
        call    "memset"
        lea     rcx, [rax+8192]
        cmp     rbp, rcx
        jne     .L1504
.L1503:
        lea     rsi, [rsp+224]
        mov     edi, 1
        call    "clock_gettime"
        pxor    xmm0, xmm0
        pxor    xmm1, xmm1
        cvtsi2sd        xmm0, QWORD PTR [rsp+232]
        mulsd   xmm0, QWORD PTR .LC3[rip]
        mov     ebp, DWORD PTR "n"[rip]
        cvtsi2sd        xmm1, QWORD PTR [rsp+224]
        addsd   xmm0, xmm1
        movsd   QWORD PTR [rsp+152], xmm0
        cmp     ebp, 64
        jle     .L1655
        sar     ebp
        mov     ecx, OFFSET FLAT:"tmp_A"
        xor     r11d, r11d
        xor     r10d, r10d
        mov     r14d, ebp
        mov     r15d, ebp
        mov     r9d, ebp
        xor     r8d, r8d
        lea     r13, [0+r14*8]
        sal     r15d, 10
        shr     r9d
        mov     QWORD PTR [rsp+136], OFFSET FLAT:"a"
        lea     rax, "a"[r13]
        mov     DWORD PTR [rsp+4], r15d
        mov     edi, r9d
        add     r9d, r9d
        mov     QWORD PTR [rsp+120], rax
        mov     eax, r15d
        imul    r12, r14, 8200
        sal     rdi, 4
        lea     rdx, [0+rax*8]
        mov     QWORD PTR [rsp+80], rax
        add     rax, r14
        lea     rbx, "a"[rdx]
        mov     QWORD PTR [rsp+72], rax
        sal     rax, 3
        mov     QWORD PTR [rsp+16], rbx
        lea     rbx, "a"[rax]
        add     rax, OFFSET FLAT:"b"
        mov     QWORD PTR [rsp+40], rbx
        lea     rbx, "b"[r13]
        mov     QWORD PTR [rsp+32], rax
        mov     QWORD PTR [rsp+88], r12
        mov     QWORD PTR [rsp+128], rbx
        lea     rbx, "b"[rdx]
        mov     edx, OFFSET FLAT:"a"
        mov     QWORD PTR [rsp+112], rbx
        xor     ebx, ebx
.L1519:
        lea     rsi, [rdx+r12]
        xor     eax, eax
.L1516:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        addpd   xmm0, XMMWORD PTR [rdx+rax]
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rdi, rax
        jne     .L1516
        cmp     ebp, r9d
        je      .L1584
        lea     eax, [r11+r9]
        mov     r11, QWORD PTR [rsp+40]
        lea     esi, [r10+r9]
        movsd   xmm0, QWORD PTR "a"[0+rax*8]
        addsd   xmm0, QWORD PTR [r11+rax*8]
        movsd   QWORD PTR "tmp_A"[0+rsi*8], xmm0
.L1584:
        add     r8d, 1024
        cmp     r15d, r8d
        je      .L1518
        add     ebx, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r11d, r8d
        mov     r10d, ebx
        jmp     .L1519
.L1518:
        mov     r12d, ebp
        mov     r11, QWORD PTR [rsp+88]
        mov     r15d, DWORD PTR [rsp+4]
        xor     r10d, r10d
        shr     r12d
        mov     ecx, OFFSET FLAT:"tmp_B"
        mov     edx, OFFSET FLAT:"b"
        xor     edi, edi
        mov     ebx, r12d
        xor     r9d, r9d
        xor     r8d, r8d
        add     r12d, r12d
        sal     rbx, 4
.L1523:
        lea     rsi, [rdx+r11]
        xor     eax, eax
.L1520:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        addpd   xmm0, XMMWORD PTR [rdx+rax]
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1520
        cmp     ebp, r12d
        je      .L1583
        lea     esi, [r8+r12]
        mov     r8, QWORD PTR [rsp+32]
        lea     eax, [r9+r12]
        movsd   xmm0, QWORD PTR "b"[0+rax*8]
        addsd   xmm0, QWORD PTR [r8+rax*8]
        movsd   QWORD PTR "tmp_B"[0+rsi*8], xmm0
.L1583:
        add     edi, 1024
        cmp     r15d, edi
        je      .L1522
        add     r10d, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r9d, edi
        mov     r8d, r10d
        jmp     .L1523
.L1522:
        sub     rsp, 8
        mov     r9d, ebp
        mov     r8d, OFFSET FLAT:"tmp_B"
        mov     ecx, ebp
        push    rbp
        mov     edx, OFFSET FLAT:"tmp_A"
        mov     edi, OFFSET FLAT:"tmp_M"
        mov     esi, ebp
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        mov     eax, ebp
        xor     r8d, r8d
        xor     edi, edi
        imul    eax, ebp
        xor     r10d, r10d
        xor     r9d, r9d
        mov     DWORD PTR [rsp+112], eax
        pop     r11
        pop     r15
        mov     r15, QWORD PTR [rsp+40]
        mov     QWORD PTR [rsp+8], rax
        sal     rax, 3
        lea     r11, "tmp_A"[rax]
        mov     QWORD PTR [rsp+104], rax
        mov     rax, QWORD PTR [rsp+88]
        mov     rcx, r11
        lea     rdx, "a"[rax]
.L1527:
        mov     rsi, rdx
        xor     eax, eax
        sub     rsi, r13
.L1524:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        addpd   xmm0, XMMWORD PTR [rsi+rax]
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1524
        cmp     ebp, r12d
        je      .L1582
        lea     eax, [r10+r12]
        mov     r10, QWORD PTR [rsp+16]
        lea     esi, [r9+r12]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, QWORD PTR [r10+rax*8]
        movsd   QWORD PTR [r11+rsi*8], xmm0
.L1582:
        add     edi, 1024
        cmp     DWORD PTR [rsp+4], edi
        je      .L1526
        add     r8d, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r10d, edi
        mov     r9d, r8d
        jmp     .L1527
.L1526:
        mov     r15, QWORD PTR [rsp+104]
        sub     rsp, 8
        mov     rdx, r11
        mov     ecx, ebp
        mov     r9d, 1024
        mov     r8d, OFFSET FLAT:"b"
        mov     esi, ebp
        lea     rax, "tmp_M"[r15]
        mov     QWORD PTR [rsp+184], rax
        mov     rdi, rax
        push    rbp
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        mov     rax, r14
        xor     edi, edi
        xor     r8d, r8d
        mov     r14, QWORD PTR [rsp+144]
        lea     r11, "tmp_B"[r15]
        sal     rax, 13
        mov     r15, QWORD PTR [rsp+144]
        mov     QWORD PTR [rsp+72], rax
        pop     r9
        mov     rcx, r11
        xor     r9d, r9d
        pop     r10
        mov     rdx, r14
        xor     r10d, r10d
        mov     QWORD PTR [rsp+24], r15
        mov     r15, rax
.L1531:
        lea     rsi, [rdx+r15]
        xor     eax, eax
.L1528:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        subpd   xmm0, xmm4
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1528
        cmp     ebp, r12d
        je      .L1581
        lea     eax, [r10+r12]
        mov     r10, QWORD PTR [rsp+32]
        lea     esi, [r9+r12]
        movsd   xmm0, QWORD PTR [r14+rax*8]
        subsd   xmm0, QWORD PTR [r10+rax*8]
        movsd   QWORD PTR [r11+rsi*8], xmm0
.L1581:
        add     edi, 1024
        cmp     DWORD PTR [rsp+4], edi
        je      .L1530
        add     r8d, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r10d, edi
        mov     r9d, r8d
        jmp     .L1531
.L1530:
        mov     eax, DWORD PTR [rsp+96]
        mov     r15, QWORD PTR [rsp+24]
        sub     rsp, 8
        mov     r8, r11
        mov     r9d, ebp
        mov     ecx, 1024
        mov     edx, OFFSET FLAT:"a"
        mov     esi, ebp
        add     eax, eax
        mov     DWORD PTR [rsp+168], eax
        lea     r14, [0+rax*8]
        mov     QWORD PTR [rsp+152], rax
        lea     rdi, "tmp_M"[r14]
        push    rbp
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        pop     rdi
        pop     r8
        lea     r11, "tmp_B"[r14]
        mov     QWORD PTR [rsp+24], r15
        mov     r15, QWORD PTR [rsp+112]
        mov     rcx, r11
        xor     r10d, r10d
        mov     QWORD PTR [rsp+48], r14
        mov     r14, QWORD PTR [rsp+56]
        xor     r9d, r9d
        xor     r8d, r8d
        mov     edx, OFFSET FLAT:"b"
        xor     edi, edi
.L1535:
        lea     rsi, [r14+rdx]
        xor     eax, eax
.L1532:
        movapd  xmm0, XMMWORD PTR [rsi+rax]
        subpd   xmm0, XMMWORD PTR [rdx+rax]
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1532
        cmp     ebp, r12d
        je      .L1580
        lea     eax, [r10+r12]
        lea     esi, [r9+r12]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        subsd   xmm0, QWORD PTR "b"[0+rax*8]
        movsd   QWORD PTR [r11+rsi*8], xmm0
.L1580:
        add     edi, 1024
        cmp     DWORD PTR [rsp+4], edi
        je      .L1534
        add     r8d, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r10d, edi
        mov     r9d, r8d
        jmp     .L1535
.L1534:
        mov     eax, DWORD PTR [rsp+160]
        add     eax, DWORD PTR [rsp+96]
        mov     r8, r11
        mov     esi, ebp
        mov     r14, QWORD PTR [rsp+48]
        mov     QWORD PTR [rsp+48], rax
        sal     rax, 3
        sub     rsp, 8
        mov     r15, QWORD PTR [rsp+32]
        mov     QWORD PTR [rsp+72], rax
        mov     r9d, ebp
        mov     ecx, 1024
        push    rbp
        mov     rdx, QWORD PTR [rsp+56]
        lea     rdi, "tmp_M"[rax]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        xor     r10d, r10d
        xor     r9d, r9d
        xor     r8d, r8d
        mov     rax, QWORD PTR [rsp+136]
        lea     r11, "tmp_A"[r14]
        pop     rdx
        xor     edi, edi
        pop     rsi
        mov     rcx, r11
        mov     QWORD PTR [rsp+24], r15
        mov     r14, rax
        mov     rdx, rax
        mov     r15, rax
.L1539:
        mov     rsi, rdx
        xor     eax, eax
        sub     rsi, r13
.L1536:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        addpd   xmm0, XMMWORD PTR [rsi+rax]
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1536
        cmp     ebp, r12d
        je      .L1579
        lea     eax, [r10+r12]
        lea     esi, [r9+r12]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, QWORD PTR "a"[0+rax*8]
        movsd   QWORD PTR [r11+rsi*8], xmm0
.L1579:
        add     edi, 1024
        cmp     DWORD PTR [rsp+4], edi
        je      .L1538
        add     r8d, ebp
        add     rdx, 8192
        add     rcx, r13
        mov     r10d, edi
        mov     r9d, r8d
        jmp     .L1539
.L1538:
        mov     eax, DWORD PTR [rsp+96]
        mov     r15, QWORD PTR [rsp+24]
        sub     rsp, 8
        mov     rdx, r11
        mov     r9d, 1024
        mov     ecx, ebp
        mov     esi, ebp
        sal     eax, 2
        mov     DWORD PTR [rsp+172], eax
        lea     rax, "tmp_M"[0+rax*8]
        mov     QWORD PTR [rsp+176], rax
        mov     rdi, rax
        push    rbp
        mov     r8, QWORD PTR [rsp+48]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        mov     rax, QWORD PTR [rsp+80]
        xor     r8d, r8d
        xor     edi, edi
        xor     esi, esi
        lea     rdx, "tmp_A"[rax]
        mov     QWORD PTR [rsp+40], rdx
        pop     r9
        xor     r9d, r9d
        pop     r10
        mov     rcx, QWORD PTR [rsp+136]
        mov     QWORD PTR [rsp+200], rdx
        mov     r11, QWORD PTR [rsp+56]
        mov     QWORD PTR [rsp+192], r15
        mov     r15, QWORD PTR [rsp+16]
.L1543:
        lea     r10, [rcx+r11]
        xor     eax, eax
.L1540:
        movapd  xmm0, XMMWORD PTR [r10+rax]
        subpd   xmm0, XMMWORD PTR [rcx+rax]
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1540
        cmp     ebp, r12d
        je      .L1578
        lea     eax, [r9+r12]
        add     r8d, r12d
        movsd   xmm0, QWORD PTR [r15+rax*8]
        mov     r8d, r8d
        subsd   xmm0, QWORD PTR "a"[0+rax*8]
        mov     rax, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+r8*8], xmm0
.L1578:
        add     esi, 1024
        cmp     DWORD PTR [rsp+4], esi
        je      .L1542
        add     edi, ebp
        add     rcx, 8192
        add     rdx, r13
        mov     r9d, esi
        mov     r8d, edi
        jmp     .L1543
.L1542:
        mov     rax, QWORD PTR [rsp+64]
        xor     r9d, r9d
        xor     r8d, r8d
        xor     edi, edi
        mov     r11, QWORD PTR [rsp+200]
        mov     r15, QWORD PTR [rsp+192]
        xor     esi, esi
        lea     rdx, "tmp_B"[rax]
        mov     QWORD PTR [rsp+16], rdx
        mov     r10, rdx
        mov     QWORD PTR [rsp+64], r11
        mov     r11, QWORD PTR [rsp+128]
.L1547:
        mov     rcx, r15
        xor     eax, eax
        sub     rcx, r13
.L1544:
        movupd  xmm0, XMMWORD PTR [r15+rax]
        addpd   xmm0, XMMWORD PTR [rcx+rax]
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1544
        cmp     ebp, r12d
        je      .L1577
        lea     eax, [r9+r12]
        lea     ecx, [r8+r12]
        movsd   xmm0, QWORD PTR [r11+rax*8]
        addsd   xmm0, QWORD PTR "b"[0+rax*8]
        mov     rax, QWORD PTR [rsp+16]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L1577:
        add     esi, 1024
        cmp     DWORD PTR [rsp+4], esi
        je      .L1546
        add     edi, ebp
        add     r15, 8192
        add     rdx, r13
        mov     r9d, esi
        mov     r8d, edi
        jmp     .L1547
.L1546:
        mov     r11, QWORD PTR [rsp+64]
        mov     eax, DWORD PTR [rsp+164]
        mov     ecx, ebp
        mov     esi, ebp
        add     eax, DWORD PTR [rsp+96]
        mov     QWORD PTR [rsp+128], r10
        sub     rsp, 8
        mov     r9d, ebp
        mov     QWORD PTR [rsp+144], r11
        lea     rdi, "tmp_M"[0+rax*8]
        mov     QWORD PTR [rsp+72], rax
        push    rbp
        mov     r8, QWORD PTR [rsp+32]
        mov     rdx, QWORD PTR [rsp+40]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        pop     rdi
        pop     r8
        xor     edi, edi
        mov     r11, QWORD PTR [rsp+136]
        xor     r8d, r8d
        xor     esi, esi
        xor     ecx, ecx
        mov     r10, QWORD PTR [rsp+128]
        mov     r9, QWORD PTR [rsp+56]
        mov     r15, QWORD PTR [rsp+120]
.L1551:
        lea     rdx, [r14+r9]
        xor     eax, eax
.L1548:
        movupd  xmm0, XMMWORD PTR [r14+rax]
        movupd  xmm5, XMMWORD PTR [rdx+rax]
        subpd   xmm0, xmm5
        movups  XMMWORD PTR [r11+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1548
        cmp     ebp, r12d
        je      .L1576
        lea     edx, [rdi+r12]
        mov     rdi, QWORD PTR [rsp+40]
        lea     eax, [r8+r12]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        subsd   xmm0, QWORD PTR [rdi+rax*8]
        mov     rax, QWORD PTR [rsp+24]
        movsd   QWORD PTR [rax+rdx*8], xmm0
.L1576:
        add     ecx, 1024
        cmp     DWORD PTR [rsp+4], ecx
        je      .L1550
        add     esi, ebp
        add     r14, 8192
        add     r11, r13
        mov     r8d, ecx
        mov     edi, esi
        jmp     .L1551
.L1550:
        mov     rax, QWORD PTR [rsp+88]
        mov     r14, QWORD PTR [rsp+32]
        xor     r9d, r9d
        xor     r8d, r8d
        mov     r15, QWORD PTR [rsp+112]
        mov     r11d, DWORD PTR [rsp+4]
        xor     edi, edi
        xor     esi, esi
        lea     rdx, "b"[rax]
.L1555:
        mov     rcx, rdx
        xor     eax, eax
        sub     rcx, r13
.L1552:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        addpd   xmm0, XMMWORD PTR [rcx+rax]
        movups  XMMWORD PTR [r10+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1552
        cmp     ebp, r12d
        je      .L1575
        lea     eax, [r9+r12]
        lea     ecx, [r8+r12]
        movsd   xmm0, QWORD PTR [r15+rax*8]
        addsd   xmm0, QWORD PTR [r14+rax*8]
        mov     rax, QWORD PTR [rsp+16]
        movsd   QWORD PTR [rax+rcx*8], xmm0
.L1575:
        add     esi, 1024
        cmp     r11d, esi
        je      .L1554
        add     edi, ebp
        add     rdx, 8192
        add     r10, r13
        mov     r9d, esi
        mov     r8d, edi
        jmp     .L1555
.L1554:
        mov     eax, DWORD PTR [rsp+160]
        add     eax, DWORD PTR [rsp+96]
        mov     r9d, ebp
        mov     ecx, ebp
        add     eax, eax
        sub     rsp, 8
        mov     esi, ebp
        xor     r15d, r15d
        mov     eax, eax
        mov     QWORD PTR [rsp+40], rax
        lea     rdi, "tmp_M"[0+rax*8]
        push    rbp
        mov     rdx, QWORD PTR [rsp+40]
        mov     r8, QWORD PTR [rsp+32]
        call    "strassen_rec(Sub, Sub, Sub, int, int) (.constprop.1.isra.0)"
        mov     rdi, QWORD PTR [rsp+24]
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rdx, QWORD PTR [rsp+184]
        xor     r9d, r9d
        mov     rax, rdi
        neg     rax
        sal     rax, 5
        mov     QWORD PTR [rsp+40], rax
        lea     rax, [rdi+rdi*2]
        pop     rcx
        sal     rdi, 4
        pop     rsi
        sal     rax, 3
        mov     r14, rdi
        mov     ecx, OFFSET FLAT:"c"
        mov     QWORD PTR [rsp+16], rax
.L1559:
        mov     rax, QWORD PTR [rsp+24]
        lea     rdi, [rdx+r14]
        lea     rsi, [rdx+rax]
        mov     rax, QWORD PTR [rsp+16]
        lea     r8, [rsi+rax]
        xor     eax, eax
.L1556:
        movupd  xmm0, XMMWORD PTR [r8+rax]
        movupd  xmm6, XMMWORD PTR [rsi+rax]
        movupd  xmm7, XMMWORD PTR [rdx+rax]
        movupd  xmm4, XMMWORD PTR [rdi+rax]
        addpd   xmm0, xmm6
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        movaps  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1556
        cmp     ebp, r12d
        je      .L1574
        mov     rdi, QWORD PTR [rsp+48]
        lea     eax, [r11+r12]
        movsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        lea     rsi, [rax+rdi]
        add     rax, QWORD PTR [rsp+32]
        lea     edi, [r12+r10]
        addsd   xmm0, QWORD PTR "tmp_M"[0+rsi*8]
        add     rsi, QWORD PTR [rsp+8]
        subsd   xmm0, QWORD PTR "tmp_M"[0+rsi*8]
        addsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        movsd   QWORD PTR "c"[0+rdi*8], xmm0
.L1574:
        add     r9d, 1024
        cmp     DWORD PTR [rsp+4], r9d
        je      .L1558
        add     r15d, ebp
        add     rdx, r13
        add     rcx, 8192
        mov     r10d, r9d
        mov     r11d, r15d
        jmp     .L1559
.L1558:
        mov     r11, QWORD PTR [rsp+144]
        xor     r10d, r10d
        xor     r9d, r9d
        xor     edi, edi
        mov     r15d, DWORD PTR [rsp+4]
        lea     rdx, "tmp_M"[r14]
        lea     rcx, "c"[r13]
        xor     r8d, r8d
.L1563:
        lea     rsi, [r14+rdx]
        xor     eax, eax
.L1560:
        movupd  xmm0, XMMWORD PTR [rdx+rax]
        movupd  xmm5, XMMWORD PTR [rsi+rax]
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rcx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1560
        cmp     ebp, r12d
        je      .L1573
        lea     eax, [r10+r12]
        lea     esi, [r9+r12]
        add     rax, r11
        lea     r9, [rax+r11]
        movsd   xmm0, QWORD PTR "tmp_M"[0+r9*8]
        addsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        movsd   QWORD PTR "c"[r13+rsi*8], xmm0
.L1573:
        add     edi, 1024
        cmp     edi, r15d
        je      .L1562
        add     r8d, ebp
        add     rdx, r13
        add     rcx, 8192
        mov     r9d, edi
        mov     r10d, r8d
        jmp     .L1563
.L1562:
        mov     rdx, QWORD PTR [rsp+56]
        mov     r15d, DWORD PTR [rsp+4]
        xor     r11d, r11d
        xor     r10d, r10d
        mov     rcx, QWORD PTR [rsp+176]
        xor     r8d, r8d
        xor     r9d, r9d
        add     rdx, OFFSET FLAT:"c"
        mov     rsi, rcx
.L1567:
        lea     rdi, [rsi+r14]
        xor     eax, eax
.L1564:
        movupd  xmm0, XMMWORD PTR [rsi+rax]
        movupd  xmm6, XMMWORD PTR [rdi+rax]
        addpd   xmm0, xmm6
        movaps  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rax, rbx
        jne     .L1564
        cmp     ebp, r12d
        je      .L1572
        lea     eax, [r11+r12]
        mov     r11, QWORD PTR [rsp+8]
        lea     edi, [r10+r12]
        add     rdi, QWORD PTR [rsp+80]
        lea     r10, [rax+r11]
        add     rax, QWORD PTR [rsp+48]
        movsd   xmm0, QWORD PTR "tmp_M"[0+r10*8]
        addsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        movsd   QWORD PTR "c"[0+rdi*8], xmm0
.L1572:
        add     r8d, 1024
        cmp     r8d, r15d
        je      .L1566
        add     r9d, ebp
        add     rsi, r13
        add     rdx, 8192
        mov     r10d, r8d
        mov     r11d, r9d
        jmp     .L1567
.L1566:
        mov     rdx, QWORD PTR [rsp+88]
        mov     r15, QWORD PTR [rsp+104]
        xor     r11d, r11d
        xor     r10d, r10d
        xor     r14d, r14d
        xor     r9d, r9d
        add     rdx, OFFSET FLAT:"c"
.L1570:
        mov     rax, QWORD PTR [rsp+16]
        mov     r8, rcx
        lea     rsi, [r15+rcx]
        sub     r8, r15
        lea     rdi, [rsi+rax]
        xor     eax, eax
.L1568:
        movupd  xmm0, XMMWORD PTR [r8+rax]
        movupd  xmm7, XMMWORD PTR [rcx+rax]
        movupd  xmm4, XMMWORD PTR [rsi+rax]
        movupd  xmm5, XMMWORD PTR [rdi+rax]
        subpd   xmm0, xmm7
        addpd   xmm0, xmm4
        addpd   xmm0, xmm5
        movups  XMMWORD PTR [rdx+rax], xmm0
        add     rax, 16
        cmp     rbx, rax
        jne     .L1568
        cmp     ebp, r12d
        je      .L1571
        lea     eax, [r11+r12]
        mov     r11, QWORD PTR [rsp+8]
        lea     edi, [r10+r12]
        add     rdi, QWORD PTR [rsp+72]
        movsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        lea     rsi, [rax+r11]
        add     rax, QWORD PTR [rsp+64]
        subsd   xmm0, QWORD PTR "tmp_M"[0+rsi*8]
        add     rsi, r11
        addsd   xmm0, QWORD PTR "tmp_M"[0+rsi*8]
        addsd   xmm0, QWORD PTR "tmp_M"[0+rax*8]
        movsd   QWORD PTR "c"[0+rdi*8], xmm0
.L1571:
        add     r9d, 1024
        cmp     r9d, DWORD PTR [rsp+4]
        je      .L1506
        add     r14d, ebp
        add     rcx, r13
        add     rdx, 8192
        mov     r10d, r9d
        mov     r11d, r14d
        jmp     .L1570
.L1655:
        test    ebp, ebp
        jle     .L1506
        mov     r11d, ebp
        mov     eax, ebp
        mov     ebx, ebp
        mov     r8d, OFFSET FLAT:"a"
        shr     r11d
        mov     r12, rax
        mov     r10d, OFFSET FLAT:"c"
        sal     ebx, 10
        sal     r12, 13
        mov     ecx, r11d
        sal     rax, 10
        xor     edx, edx
        sal     rcx, 4
        add     r11d, r11d
        mov     r13, rcx
.L1514:
        cmp     ebp, 1
        je      .L1594
.L1511:
        lea     r15, [r13+0+r10]
        lea     rdi, "b"[r12]
        mov     r14d, OFFSET FLAT:"b"
        mov     r9, r10
.L1509:
        mov     rsi, r8
        mov     rcx, r14
        pxor    xmm1, xmm1
.L1508:
        movsd   xmm0, QWORD PTR [rsi]
        add     rcx, 8192
        add     rsi, 8
        unpcklpd        xmm0, xmm0
        mulpd   xmm0, XMMWORD PTR [rcx-8192]
        addpd   xmm1, xmm0
        cmp     rdi, rcx
        jne     .L1508
        movaps  XMMWORD PTR [r9], xmm1
        add     r9, 16
        add     r14, 16
        add     rdi, 16
        cmp     r15, r9
        jne     .L1509
        cmp     r11d, ebp
        je      .L1512
        mov     r9d, r11d
.L1507:
        mov     esi, r9d
        pxor    xmm1, xmm1
        lea     rcx, "b"[0+rsi*8]
        add     rsi, rax
        lea     rdi, "b"[0+rsi*8]
        mov     rsi, r8
.L1513:
        movsd   xmm0, QWORD PTR [rsi]
        mulsd   xmm0, QWORD PTR [rcx]
        add     rcx, 8192
        add     rsi, 8
        addsd   xmm1, xmm0
        cmp     rcx, rdi
        jne     .L1513
        lea     ecx, [rdx+r9]
        add     edx, 1024
        add     r8, 8192
        add     r10, 8192
        movsd   QWORD PTR "c"[0+rcx*8], xmm1
        cmp     edx, ebx
        jne     .L1514
.L1506:
        mov     edi, 1
        lea     rsi, [rsp+224]
        call    "clock_gettime"
        pxor    xmm0, xmm0
        pxor    xmm1, xmm1
        cvtsi2sd        xmm0, QWORD PTR [rsp+232]
        mulsd   xmm0, QWORD PTR .LC3[rip]
        mov     edi, DWORD PTR "n"[rip]
        cvtsi2sd        xmm1, QWORD PTR [rsp+224]
        addsd   xmm0, xmm1
        movapd  xmm3, xmm0
        subsd   xmm3, QWORD PTR [rsp+152]
        test    edi, edi
        jle     .L1595
        mov     ecx, edi
        xor     edx, edx
        pxor    xmm2, xmm2
        mov     rsi, rcx
        sal     rcx, 3
        sal     rsi, 13
.L1587:
        xor     eax, eax
.L1586:
        movsd   xmm0, QWORD PTR "c"[rdx+rax]
        subsd   xmm0, QWORD PTR "ref"[rdx+rax]
        add     rax, 8
        andpd   xmm0, XMMWORD PTR .LC4[rip]
        maxsd   xmm0, xmm2
        movapd  xmm2, xmm0
        cmp     rcx, rax
        jne     .L1586
        add     rdx, 8192
        cmp     rdx, rsi
        jne     .L1587
.L1585:
        pxor    xmm1, xmm1
        mov     ebx, DWORD PTR [rsp+100]
        mov     esi, edi
        mov     edx, OFFSET FLAT:.LC8
        cvtsi2sd        xmm1, edi
        movapd  xmm0, xmm1
        mov     edi, OFFSET FLAT:.LC7
        mov     eax, 3
        addsd   xmm0, xmm1
        mov     ecx, ebx
        mulsd   xmm0, xmm1
        mulsd   xmm1, xmm0
        movapd  xmm0, xmm3
        divsd   xmm1, xmm3
        divsd   xmm1, QWORD PTR .LC5[rip]
        call    "printf"
        lea     eax, [rbx+1]
        mov     DWORD PTR [rsp+100], eax
        cmp     eax, 6
        jne     .L1501
        mov     r13, QWORD PTR [rsp+184]
        lea     rax, [rsp+224]
        add     r13, 4
        cmp     r13, rax
        je      .L1588
        mov     edx, DWORD PTR [r13+0]
        jmp     .L1589
.L1512:
        add     edx, 1024
        cmp     edx, ebx
        je      .L1506
        add     r8, 8192
        add     r10, 8192
        jmp     .L1511
.L1480:
        add     r9, 8192
        cmp     r9, rbp
        je      .L1474
        add     r8, 8192
        jmp     .L1483
.L1590:
        xor     r12d, r12d
        jmp     .L1484
.L1592:
        pxor    xmm2, xmm2
        jmp     .L1496
.L1594:
        xor     r9d, r9d
        jmp     .L1507
.L1595:
        pxor    xmm2, xmm2
        jmp     .L1585
.L1652:
        mov     ebx, DWORD PTR [rsp+4]
        jmp     .L1487
.L1588:
        add     rsp, 248
        xor     eax, eax
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
.LC2:
        .long   -4194304
        .long   1105199103
.LC3:
        .long   -400107883
        .long   1041313291
.LC4:
        .long   -1
        .long   2147483647
        .long   0
        .long   0
.LC5:
        .long   0
        .long   1104006501