SeCreateAccessState proc near           ; CODE XREF: sub_14030D258+781↑p
                                        ; sub_1405E4E90+2D7↑p ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     r10, rdx
                mov     r11, rcx
                mov     [rsp+38h+var_10], r9
                mov     rcx, gs:188h
                mov     r9, r10
                mov     [rsp+38h+var_18], r8d
                mov     r8, r11
                mov     rdx, [rax+0B8h]
                call    SeCreateAccessStateEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeCreateAccessState endp
