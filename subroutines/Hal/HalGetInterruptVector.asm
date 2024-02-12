HalGetInterruptVector proc near         ; DATA XREF: .pdata:00000001400EE878↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     r10, [rsp+48h+arg_28]
                mov     rax, cs:off_140C00640
                mov     [rsp+48h+var_20], r10
                mov     r10, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], r10
                call    sub_1404079D0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalGetInterruptVector endp
