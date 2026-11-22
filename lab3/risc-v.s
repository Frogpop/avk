mul_ijk():
        lw      a6,.LANCHOR0
        lla     a5,.LANCHOR0
        ble     a6,zero,.L1
        ld      t3,16(a5)
        ld      t1,8(a5)
        ld      t4,24(a5)
        slli    a6,a6,3
        add     t5,a6,t3
.L3:
        ld      a0,0(t3)
        ld      a7,0(t4)
        li      a2,0
        add     a1,a6,a0
.L6:
        fmv.d.x fa5,zero
        mv      a3,t1
        mv      a5,a0
.L4:
        ld      a4,0(a3)
        fld     fa3,0(a5)
        addi    a5,a5,8
        add     a4,a4,a2
        fld     fa4,0(a4)
        addi    a3,a3,8
        fmadd.d fa5,fa3,fa4,fa5
        bne     a1,a5,.L4
        add     a5,a7,a2
        fsd     fa5,0(a5)
        addi    a2,a2,8
        bne     a6,a2,.L6
        addi    t3,t3,8
        addi    t4,t4,8
        bne     t5,t3,.L3
.L1:
        ret
mul_ikj():
        lw      t3,.LANCHOR0
        lla     a5,.LANCHOR0
        ble     t3,zero,.L9
        ld      a7,16(a5)
        ld      t5,8(a5)
        ld      t1,24(a5)
        slli    t3,t3,3
        add     t4,t3,a7
.L11:
        ld      a2,0(a7)
        ld      a0,0(t1)
        mv      a1,t5
        add     a6,t3,a2
        add     a3,t3,a0
.L13:
        fld     fa3,0(a2)
        ld      a4,0(a1)
        mv      a5,a0
.L12:
        fld     fa5,0(a4)
        fld     fa4,0(a5)
        addi    a5,a5,8
        addi    a4,a4,8
        fmadd.d fa5,fa5,fa3,fa4
        fsd     fa5,-8(a5)
        bne     a3,a5,.L12
        addi    a2,a2,8
        addi    a1,a1,8
        bne     a6,a2,.L13
        addi    a7,a7,8
        addi    t1,t1,8
        bne     t4,a7,.L11
.L9:
        ret
.LC1:
        .string "ijk"
.LC2:
        .string "ikj"
.LC7:
        .string "%d,%s,%d,%.6f,%.3f,%.9f\n"
main:
        li      a5,1
        slli    a5,a5,41
        addi    sp,sp,-208
        addi    a5,a5,384
        sd      a5,32(sp)
        li      a5,256
        sw      a5,28(sp)
        li      a5,1024
        sw      a5,40(sp)
        lla     a5,.LC1
        sd      a5,48(sp)
        lla     a5,mul_ijk()
        fsd     fs0,104(sp)
        fsd     fs1,96(sp)
        fsd     fs2,88(sp)
        sd      a5,56(sp)
        fld     fs1,.LC5,a4
        lla     a5,.LC2
        fld     fs2,.LC6,a4
        fld     fs0,.LC4,a4
        sd      a5,64(sp)
        lla     a5,mul_ikj()
        sd      s1,184(sp)
        sd      s2,176(sp)
        sd      s4,160(sp)
        sd      s5,152(sp)
        sd      s6,144(sp)
        sd      ra,200(sp)
        sd      s0,192(sp)
        sd      s3,168(sp)
        sd      s7,136(sp)
        sd      s8,128(sp)
        sd      s9,120(sp)
        sd      s10,112(sp)
        fsd     fs3,80(sp)
        sd      a5,72(sp)
        addi    s5,sp,28
        addi    s6,sp,44
        li      s1,128
        lla     s2,.LANCHOR0
        li      s4,6
.L29:
        slli    s8,s1,3
        mv      a0,s8
        sw      s1,0(s2)
        call    malloc@plt
        mv      s0,a0
        mv      a0,s8
        sd      s0,16(s2)
        call    malloc@plt
        mv      s9,a0
        mv      a0,s8
        sd      s9,8(s2)
        call    malloc@plt
        sd      a0,24(s2)
        mv      s10,a0
        ble     s1,zero,.L17
        li      s7,0
.L19:
        slli    s3,s7,3
        mv      a0,s8
        call    malloc@plt
        add     s0,s0,s3
        sd      a0,0(s0)
        mv      a0,s8
        call    malloc@plt
        add     s9,s9,s3
        sd      a0,0(s9)
        mv      a0,s8
        call    malloc@plt
        add     s10,s10,s3
        sd      a0,0(s10)
        ble     s1,zero,.L17
        li      s0,0
.L18:
        call    rand@plt
        fcvt.d.w        fa5,a0
        ld      a5,16(s2)
        slli    s8,s0,3
        fdiv.d  fa5,fa5,fs0
        add     a5,a5,s3
        ld      a5,0(a5)
        addi    s0,s0,1
        add     a5,a5,s8
        fsd     fa5,0(a5)
        call    rand@plt
        fcvt.d.w        fa5,a0
        ld      s9,8(s2)
        lw      s1,.LANCHOR0
        fdiv.d  fa5,fa5,fs0
        add     a5,s9,s3
        ld      a5,0(a5)
        sext.w  a4,s0
        add     a5,a5,s8
        fsd     fa5,0(a5)
        blt     a4,s1,.L18
        addi    s7,s7,1
        sext.w  a5,s7
        ble     s1,a5,.L17
        ld      s0,16(s2)
        ld      s10,24(s2)
        slli    s8,s1,3
        j       .L19
.L17:
        addi    s8,sp,48
.L20:
        li      s7,1
.L25:
        ble     s1,zero,.L23
        ld      s0,24(s2)
        slli    s1,s1,3
        add     s3,s1,s0
.L21:
        ld      a0,0(s0)
        mv      a2,s1
        li      a1,0
        addi    s0,s0,8
        call    memset@plt
        bne     s3,s0,.L21
.L23:
        addi    a1,sp,8
        li      a0,1
        call    clock_gettime@plt
        ld      a3,16(sp)
        ld      a4,8(sp)
        ld      a5,8(s8)
        fcvt.d.l        fs3,a3
        fcvt.d.l        fa5,a4
        fmadd.d fs3,fs3,fs1,fa5
        jalr    a5
        addi    a1,sp,8
        li      a0,1
        call    clock_gettime@plt
        lw      a1,.LANCHOR0
        ld      a4,16(sp)
        ld      a5,8(sp)
        fcvt.d.w        fa3,a1
        fcvt.d.l        fa4,a4
        fcvt.d.l        fa2,a5
        fadd.d  fa5,fa3,fa3
        ld      a5,24(s2)
        fmadd.d fa4,fa4,fs1,fa2
        ld      a2,0(s8)
        ld      a5,56(a5)
        mv      a3,s7
        lla     a0,.LC7
        fmul.d  fa5,fa5,fa3
        ld      a6,56(a5)
        fsub.d  fa4,fa4,fs3
        addiw   s7,s7,1
        fmul.d  fa5,fa5,fa3
        fmv.x.d a4,fa4
        fdiv.d  fa5,fa5,fa4
        fdiv.d  fa5,fa5,fs2
        fmv.x.d a5,fa5
        call    printf@plt
        lw      s1,.LANCHOR0
        bne     s7,s4,.L25
        addi    s8,s8,16
        addi    a5,sp,80
        bne     s8,a5,.L20
        ble     s1,zero,.L26
        slli    s1,s1,3
        li      s0,0
.L27:
        ld      a5,16(s2)
        add     a5,a5,s0
        ld      a0,0(a5)
        call    free@plt
        ld      a5,8(s2)
        add     a5,a5,s0
        ld      a0,0(a5)
        call    free@plt
        ld      a5,24(s2)
        add     a5,a5,s0
        ld      a0,0(a5)
        addi    s0,s0,8
        call    free@plt
        bne     s1,s0,.L27
.L26:
        ld      a0,16(s2)
        call    free@plt
        ld      a0,8(s2)
        call    free@plt
        ld      a0,24(s2)
        call    free@plt
        beq     s5,s6,.L28
        lw      s1,0(s5)
        addi    s5,s5,4
        j       .L29
.L28:
        ld      ra,200(sp)
        ld      s0,192(sp)
        ld      s1,184(sp)
        ld      s2,176(sp)
        ld      s3,168(sp)
        ld      s4,160(sp)
        ld      s5,152(sp)
        ld      s6,144(sp)
        ld      s7,136(sp)
        ld      s8,128(sp)
        ld      s9,120(sp)
        ld      s10,112(sp)
        fld     fs0,104(sp)
        fld     fs1,96(sp)
        fld     fs2,88(sp)
        fld     fs3,80(sp)
        li      a0,0
        addi    sp,sp,208
        jr      ra
.LC4:
        .word   -4194304
        .word   1105199103
.LC5:
        .word   -400107883
        .word   1041313291
.LC6:
        .word   0
        .word   1104006501
        .set    .LANCHOR0,. + 0
n:
        .zero   4
        .zero   4
b:
        .zero   8
a:
        .zero   8
c:
        .zero   8