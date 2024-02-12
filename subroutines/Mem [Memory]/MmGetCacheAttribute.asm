MmGetCacheAttribute proc near           ; DATA XREF: .pdata:00000001400F48D8↑o
                sub     rsp, 28h
                mov     r8, rdx
                xor     edx, edx
                call    MmGetCacheAttributeEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetCacheAttribute endp
