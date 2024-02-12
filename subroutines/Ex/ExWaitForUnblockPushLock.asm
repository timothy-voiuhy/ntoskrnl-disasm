ExWaitForUnblockPushLock proc near      ; DATA XREF: .pdata:00000001400F9EB8↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    ExTimedWaitForUnblockPushLock
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExWaitForUnblockPushLock endp
