ExFreeCacheAwareRundownProtection proc near
                                        ; CODE XREF: sub_140561B18+740↓p
                                        ; sub_1406EB3F4+3F↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+8]
                call    sub_14023C050
                mov     rcx, rbx
                call    sub_14023C050
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFreeCacheAwareRundownProtection endp
