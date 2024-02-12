RtlStringFromGUID proc near             ; CODE XREF: sub_1406D6AE8+228↓p
                                        ; sub_1408789D4+5A8↓p ...
                sub     rsp, 28h
                mov     r8b, 1
                call    sub_140677A28
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlStringFromGUID endp
