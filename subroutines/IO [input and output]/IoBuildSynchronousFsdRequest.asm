IoBuildSynchronousFsdRequest proc near  ; CODE XREF: sub_1409ACF98+89↓p
                                        ; sub_1409ACF98+1A4↓p ...

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     r11, rsp
                sub     rsp, 48h
                mov     rax, [rsp+48h]
                mov     [r11-10h], rax
                mov     rax, [rsp+48h+arg_30]
                mov     [r11-18h], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [r11-20h], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [r11-28h], rax
                call    sub_140704870
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoBuildSynchronousFsdRequest endp
