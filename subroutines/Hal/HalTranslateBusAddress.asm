HalTranslateBusAddress proc near        ; CODE XREF: sub_1407BDC08+3C↓p
                                        ; sub_140790B50+A9B6C↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                cmp     ecx, 5
                jz      short loc_1403A5A69
                mov     rax, [rsp+38h+arg_20]
                mov     [rax], r8
                mov     al, 1

loc_1403A5A63:                          ; CODE XREF: HalTranslateBusAddress+34↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A5A69:                          ; CODE XREF: HalTranslateBusAddress+7↑j
                mov     r10, [rsp+38h+arg_20]
                mov     ecx, 5
                mov     rax, cs:off_140C005C8
                mov     [rsp+38h+var_18], r10
                call    sub_1404079D0
                jmp     short loc_1403A5A63
HalTranslateBusAddress endp
