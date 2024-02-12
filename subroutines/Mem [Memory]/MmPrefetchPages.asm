MmPrefetchPages proc near               ; DATA XREF: .pdata:00000001400FFF3C↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    sub_14065E998
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmPrefetchPages endp
