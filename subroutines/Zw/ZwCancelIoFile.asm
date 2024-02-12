ZwCancelIoFile  proc near               ; DATA XREF: .pdata:00000001400E2140↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 5Dh ; ']'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCancelIoFile  endp

; ---------------------------------------------------------------------------
algn_1403FA79F:                         ; DATA XREF: .pdata:00000001400E2140↑o
                align 20h
; Exported entry 2936. ZwTraceEvent

; =============== S U B R O U T I N E =======================================


