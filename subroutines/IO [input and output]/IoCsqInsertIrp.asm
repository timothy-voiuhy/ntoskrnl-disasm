IoCsqInsertIrp  proc near               ; DATA XREF: .pdata:00000001400D6DAC↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    IoCsqInsertIrpEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCsqInsertIrp  endp

algn_14033B4E2:                         ; DATA XREF: .pdata:00000001400D6DAC↑o
                align 10h
; Exported entry 797. IoCsqInsertIrpEx

; =============== S U B R O U T I N E =======================================


