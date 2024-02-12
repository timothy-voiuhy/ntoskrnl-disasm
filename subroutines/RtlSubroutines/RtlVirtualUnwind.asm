RtlVirtualUnwind proc near              ; CODE XREF: sub_1402AAF70+1C9↑p
                                        ; sub_1402AAF70+348↑p ...

var_28          = qword ptr -28h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                mov     r11, rsp
                sub     rsp, 78h
                mov     rax, [rsp+78h+arg_38]
                xor     r10d, r10d
                mov     [r11-10h], rax
                lea     rax, [r11-20h]
                mov     [r11-30h], rax
                lea     rax, [r11-28h]
                mov     [r11-38h], rax
                mov     rax, [rsp+78h+arg_30]
                mov     [r11-40h], rax
                mov     rax, [rsp+78h+arg_28]
                mov     [r11-48h], rax
                mov     rax, [rsp+78h+arg_20]
                mov     [r11-50h], r10
                mov     [r11-58h], rax
                mov     [r11-28h], r10
                mov     [r11-20h], r10
                mov     [r11-18h], r10
                call    sub_1402ACC00
                mov     rax, [rsp+78h+var_28]
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlVirtualUnwind endp
