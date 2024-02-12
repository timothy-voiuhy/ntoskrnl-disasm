ExInitializePagedLookasideList proc near
                                        ; CODE XREF: sub_1407CC94C+190↓p
                                        ; sub_1407CC94C+1C3↓p ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = word ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = word ptr  38h

                sub     rsp, 48h
                and     [rsp+48h+var_10], 0
                movzx   eax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], ax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    sub_140358360
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInitializePagedLookasideList endp
