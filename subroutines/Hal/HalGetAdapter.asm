HalGetAdapter   proc near               ; DATA XREF: .pdata:000000014011AA08↑o
                sub     rsp, 28h
                mov     r8, rdx
                xor     edx, edx
                call    sub_14076342C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalGetAdapter   endp

algn_140865AE4:                         ; DATA XREF: .pdata:000000014011AA08↑o
                align 10h
; Exported entry 600. HalAllocateHardwareCounters

; =============== S U B R O U T I N E =======================================


