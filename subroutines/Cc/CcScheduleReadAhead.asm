CcScheduleReadAhead proc near           ; DATA XREF: .pdata:00000001400F0EB8↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    CcScheduleReadAheadEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcScheduleReadAhead endp
