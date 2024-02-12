ExAllocatePool  proc near               ; CODE XREF: sub_1409D6900+44↓p
                                        ; DATA XREF: .pdata:00000001400D9740↑o
                sub     rsp, 28h
                mov     r8d, 656E6F4Eh
                call    ExAllocatePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocatePool  endp

algn_140363695:                         ; DATA XREF: .pdata:00000001400D9740↑o
                align 20h
; Exported entry 152. EtwpDisableStackWalkApc

; =============== S U B R O U T I N E =======================================


