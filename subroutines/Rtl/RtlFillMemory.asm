RtlFillMemory   proc near               ; DATA XREF: .pdata:00000001400F7EF0↑o
                sub     rsp, 28h
                mov     rax, rdx
                movzx   edx, r8b
                mov     r8, rax
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFillMemory   endp

algn_14058D059:                         ; DATA XREF: .pdata:00000001400F7EF0↑o
                align 20h
; Exported entry 2112. RtlFillNonVolatileMemory

; =============== S U B R O U T I N E =======================================


