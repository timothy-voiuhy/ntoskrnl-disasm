IoSetIoCompletion proc near             ; CODE XREF: sub_14035740C+24↑p
                                        ; sub_1406431F0+91E↑p ...

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

                sub     rsp, 48h
                mov     al, [rsp+48h+arg_28]
                mov     [rsp+48h+var_10], 0
                and     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], al
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    sub_1402C3040
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetIoCompletion endp
