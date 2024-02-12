ZwOpenTimer     proc near               ; DATA XREF: .pdata:00000001400E2B24↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 130h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenTimer     endp

; ---------------------------------------------------------------------------
algn_1403FC1FF:                         ; DATA XREF: .pdata:00000001400E2B24↑o
                align 20h
; Exported entry 2827. ZwOpenTransaction

; =============== S U B R O U T I N E =======================================


