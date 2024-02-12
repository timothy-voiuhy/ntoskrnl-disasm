PoRequestPowerIrp proc near             ; DATA XREF: .pdata:00000001400DA6AC↑o

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], rax
                call    sub_1403701B0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoRequestPowerIrp endp
