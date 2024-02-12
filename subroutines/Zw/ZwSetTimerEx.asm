ZwSetTimerEx    proc near               ; DATA XREF: .pdata:00000001400E3130↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1B1h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetTimerEx    endp

; ---------------------------------------------------------------------------
algn_1403FD21F:                         ; DATA XREF: .pdata:00000001400E3130↑o
                align 20h
; Exported entry 2927. ZwSetTimerResolution

; =============== S U B R O U T I N E =======================================


