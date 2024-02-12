RtlAbsoluteToSelfRelativeSD proc near   ; CODE XREF: sub_140596FC8+3E↑p
                                        ; sub_140596FC8+76↑p ...
                sub     rsp, 28h
                cmp     word ptr [rcx+2], 0
                jl      short loc_140766E16
                call    sub_140766E24

loc_140766E10:                          ; CODE XREF: RtlAbsoluteToSelfRelativeSD+1B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140766E16:                          ; CODE XREF: RtlAbsoluteToSelfRelativeSD+9↑j
                mov     eax, 0C00000E7h
                jmp     short loc_140766E10
RtlAbsoluteToSelfRelativeSD endp
