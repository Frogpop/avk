f2c(float):
        flw     fa4,.LC0,a5
        flw     fa5,.LC1,a5
        fsub.s  fa0,fa0,fa4
        fmul.s  fa0,fa0,fa5
        ret
sqrt_demo(int, float*, int*):
        fcvt.s.w        fa5,a0
        fmv.s.x fa4,zero
        fge.s   a5,fa5,fa4
        beq     a5,zero,.L4
        fsqrt.s fa5,fa5
.L4:
        fcvt.w.s a5,fa5,rtz
        fsw     fa5,0(a1)
        sw      a5,0(a2)
        ret
e_const(double):
        fld     fa5,.LC2,a5
        li      a5,1
        fle.d   a4,fa0,fa5
        fmv.d   fa3,fa5
        beq     a4,zero,.L7
.L10:
        fcvt.d.w        fa4,a5
        addiw   a5,a5,1
        fdiv.d  fa5,fa5,fa4
        fle.d   a4,fa0,fa5
        fadd.d  fa3,fa3,fa5
        bne     a4,zero,.L10
.L7:
        fmv.d   fa0,fa3
        ret
add_ld(long double, long double):
        addi    sp,sp,-16
        sd      ra,8(sp)
        call    __addtf3@plt
        ld      ra,8(sp)
        addi    sp,sp,16
        jr      ra
.LC3:
        .string "f2c(32)  = %.9g\n"
.LC5:
        .string "f2c(212) = %.9g\n"
.LC7:
        .string "f2c(-40) = %.9g\n"
.LC8:
        .string "sqrt_demo(%d): dst = %.9g, idst = %d\n"
.LC13:
        .string "e_const(%.0e) = %.17g (M_E = %.17g)\n"
.LC15:
        .string "add_ld(1, 2) = %.21Lg\n"
main:
        addi    sp,sp,-96
        mv      a1,zero
        lla     a0,.LC3
        sd      ra,88(sp)
        sd      s0,80(sp)
        sd      s1,72(sp)
        fsd     fs0,56(sp)
        call    printf@plt
        ld      a1,.LC4
        lla     a0,.LC5
        fmv.s.x fs0,zero
        call    printf@plt
        ld      a1,.LC6
        lla     a0,.LC7
        addi    s0,sp,8
        call    printf@plt
        li      a5,1
        slli    a5,a5,33
        addi    a5,a5,100
        sd      a5,8(sp)
        li      a5,-1
        sw      a5,16(sp)
        addi    s1,sp,20
.L22:
        lw      a1,0(s0)
        fcvt.s.w        fa5,a1
        fge.s   a5,fa5,fs0
        beq     a5,zero,.L20
        fsqrt.s fa5,fa5
.L20:
        fcvt.w.s a3,fa5,rtz
        fcvt.d.s        fa5,fa5
        lla     a0,.LC8
        addi    s0,s0,4
        fmv.x.d a2,fa5
        call    printf@plt
        bne     s1,s0,.L22
        fld     fa3,.LC9,a5
        fld     fa4,.LC10,a5
        fld     fa5,.LC11,a5
        fld     fs0,.LC2,a5
        ld      s1,.LC12
        fsd     fa3,24(sp)
        fsd     fa4,32(sp)
        fsd     fa5,40(sp)
        addi    s0,sp,24
.L26:
        fld     fa2,0(s0)
        fmv.d   fa3,fs0
        fmv.d   fa5,fs0
        fle.d   a4,fa2,fs0
        li      a5,1
        beq     a4,zero,.L23
.L25:
        fcvt.d.w        fa4,a5
        addiw   a5,a5,1
        fdiv.d  fa5,fa5,fa4
        fle.d   a4,fa2,fa5
        fadd.d  fa3,fa3,fa5
        bne     a4,zero,.L25
.L23:
        fmv.x.d a2,fa3
        fmv.x.d a1,fa2
        mv      a3,s1
        lla     a0,.LC13
        call    printf@plt
        addi    s0,s0,8
        addi    a5,sp,48
        bne     s0,a5,.L26
        lla     a5,.LC14
        ld      a2,0(a5)
        ld      a3,8(a5)
        lla     a0,.LC15
        call    printf@plt
        ld      ra,88(sp)
        ld      s0,80(sp)
        ld      s1,72(sp)
        fld     fs0,56(sp)
        li      a0,0
        addi    sp,sp,96
        jr      ra
.LC0:
        .word   1107296256
.LC1:
        .word   1057896676
.LC2:
        .word   0
        .word   1072693248
.LC4:
        .word   536870912
        .word   1079574528
.LC6:
        .word   0
        .word   -1069285376
.LC9:
        .word   -1598689907
        .word   1051772663
.LC10:
        .word   -2127697391
        .word   1030854553
.LC11:
        .word   -1747416644
        .word   1016910514
.LC12:
        .word   -1961601175
        .word   1074118410
.LC14:
        .word   0
        .word   0
        .word   0
        .word   1073774592