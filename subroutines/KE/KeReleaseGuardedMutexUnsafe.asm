KeReleaseGuardedMutexUnsafe proc near   ; DATA XREF: .pdata:00000001400DE7C8↑o
                sub     rsp, 28h
                call    ExReleaseFastMutexUnsafe
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseGuardedMutexUnsafe endp
