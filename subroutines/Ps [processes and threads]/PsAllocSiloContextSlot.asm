PsAllocSiloContextSlot proc near        ; DATA XREF: .pdata:000000014010C4D0↑o
                sub     rsp, 28h
                mov     rcx, rdx
                call    sub_140790D08
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsAllocSiloContextSlot endp
