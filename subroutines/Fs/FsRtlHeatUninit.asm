FsRtlHeatUninit proc near               ; DATA XREF: .pdata:000000014011C3E8↑o
                sub     rsp, 28h
                mov     rcx, rdx
                call    sub_14088EA10
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlHeatUninit endp
