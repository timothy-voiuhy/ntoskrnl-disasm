ZwOpenThread    proc near               ; DATA XREF: .pdata:00000001400E2B18↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 12Fh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenThread    endp

; ---------------------------------------------------------------------------
algn_1403FC1DF:                         ; DATA XREF: .pdata:00000001400E2B18↑o
                align 20h
; Exported entry 2826. ZwOpenTimer

; =============== S U B R O U T I N E =======================================


