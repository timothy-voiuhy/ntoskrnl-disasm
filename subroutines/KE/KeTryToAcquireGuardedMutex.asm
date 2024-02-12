KeTryToAcquireGuardedMutex proc near    ; DATA XREF: .pdata:00000001400D524C↑o
                sub     rsp, 28h
                call    ExTryToAcquireFastMutex
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeTryToAcquireGuardedMutex endp
