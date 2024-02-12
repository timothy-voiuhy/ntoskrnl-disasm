IoFastQueryNetworkAttributes proc near  ; DATA XREF: .pdata:000000014011C9C4↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_20          = qword ptr  28h

                sub     rsp, 58h
                mov     rax, gs:188h
                mov     r10d, r8d
                mov     r8b, [rax+232h]
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_30], rax
                mov     [rsp+58h+var_38], r9
                mov     r9d, r10d
                call    sub_1408958C8
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFastQueryNetworkAttributes endp
