RtlIsStateSeparationEnabled proc near   ; CODE XREF: sub_1403997F4+20↑p
                                        ; sub_140A3A7B8+353↓p ...
                sub     rsp, 28h
                call    sub_14035C718
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsStateSeparationEnabled endp
