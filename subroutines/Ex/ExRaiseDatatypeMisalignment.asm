ExRaiseDatatypeMisalignment proc near   ; CODE XREF: sub_140202124:loc_1402021C7↑p
                                        ; sub_140216560:loc_140217766↑p ...
                sub     rsp, 28h
                mov     ecx, 80000002h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
ExRaiseDatatypeMisalignment endp
