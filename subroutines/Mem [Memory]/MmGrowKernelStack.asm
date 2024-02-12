MmGrowKernelStack proc near             ; DATA XREF: .pdata:00000001400F4B18↑o
                sub     rsp, 28h
                mov     edx, 6000h
                call    sub_14035D240
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGrowKernelStack endp
