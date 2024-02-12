ZwCancelTimer   proc near               ; DATA XREF: .pdata:00000001400E2170↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 61h ; 'a'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCancelTimer   endp

; ---------------------------------------------------------------------------
algn_1403FA81F:                         ; DATA XREF: .pdata:00000001400E2170↑o
                align 20h
; Exported entry 2925. ZwSetTimer

; =============== S U B R O U T I N E =======================================


