KeQueryInterruptTimePrecise proc near   ; CODE XREF: sub_1404D4BF0+5D↓p
                                        ; sub_140773A78+AC↓p ...
                sub     rsp, 28h
                call    sub_140250BC0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQueryInterruptTimePrecise endp
