ZwRequestPort   proc near               ; CODE XREF: sub_140355168+104↑p
                                        ; DATA XREF: .pdata:00000001400E2E90↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 179h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRequestPort   endp

; ---------------------------------------------------------------------------
algn_1403FCB1F:                         ; DATA XREF: .pdata:00000001400E2E90↑o
                align 20h
; Exported entry 2888. ZwResetEvent

; =============== S U B R O U T I N E =======================================


