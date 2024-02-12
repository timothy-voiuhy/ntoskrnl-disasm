KeAcquireGuardedMutexUnsafe proc near   ; DATA XREF: .pdata:00000001400DE7E0↑o
                sub     rsp, 28h
                call    ExAcquireFastMutexUnsafe
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireGuardedMutexUnsafe endp
