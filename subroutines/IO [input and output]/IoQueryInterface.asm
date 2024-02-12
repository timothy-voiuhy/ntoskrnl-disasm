IoQueryInterface proc near              ; CODE XREF: sub_140379D94+67↑p
                                        ; sub_1404B7BB4+2A↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = word ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_30]
                test    dl, 1
                mov     [rsp+38h+var_10], rax
                movzx   r10d, r9w
                mov     rax, [rsp+38h+arg_28]
                mov     r11, r8
                mov     [rsp+38h+var_18], rax
                mov     rdx, r8
                jnz     short loc_1407642A8
                movzx   r8d, [rsp+38h+arg_20]
                call    sub_140764A64

loc_1407642A2:                          ; CODE XREF: IoQueryInterface+47↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407642A8:                          ; CODE XREF: IoQueryInterface+25↑j
                movzx   r9d, [rsp+38h+arg_20]
                movzx   r8d, r10w
                call    sub_140764068
                jmp     short loc_1407642A2
IoQueryInterface endp
