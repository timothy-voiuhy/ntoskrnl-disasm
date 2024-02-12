IoDeleteDriver  proc near               ; CODE XREF: sub_140A54474+7A9↓p
                                        ; DATA XREF: .pdata:000000014011C9AC↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                add     rcx, 38h ; '8'
                call    sub_140768A4C
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoDeleteDriver  endp

algn_1408952D1:                         ; DATA XREF: .pdata:000000014011C9AC↑o
                align 20h
; Exported entry 813. IoEnqueueIrp

; =============== S U B R O U T I N E =======================================


