HalGetVectorInput proc near             ; CODE XREF: sub_1407CA650+C4↓p
                                        ; DATA XREF: .pdata:00000001400DF95C↑o

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     r10, [rsp+38h+arg_20]
                mov     rax, cs:off_140C00648
                mov     [rsp+38h+var_18], r10
                call    sub_1404079D0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalGetVectorInput endp
