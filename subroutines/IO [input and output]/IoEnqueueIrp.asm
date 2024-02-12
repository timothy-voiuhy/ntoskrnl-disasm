IoEnqueueIrp    proc near               ; DATA XREF: .pdata:000000014011C9B8↑o
                sub     rsp, 28h
                call    sub_140245C90
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoEnqueueIrp    endp

algn_1408952EF:                         ; DATA XREF: .pdata:000000014011C9B8↑o
                align 20h
; Exported entry 816. IoFastQueryNetworkAttributes

; =============== S U B R O U T I N E =======================================


