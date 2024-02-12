PsCreateSystemThread proc near          ; CODE XREF: sub_1403045E4+37↑p
                                        ; sub_14030467C+62↑p ...

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     r11, rsp
                sub     rsp, 58h
                and     qword ptr [r11-18h], 0
                and     qword ptr [r11-20h], 0
                mov     rax, [rsp+58h+arg_30]
                mov     [r11-28h], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-30h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    PsCreateSystemThreadEx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsCreateSystemThread endp
