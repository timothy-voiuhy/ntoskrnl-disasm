ZwOpenSession   proc near               ; CODE XREF: sub_1407234E4+17D↓p
                                        ; DATA XREF: .pdata:00000001400E2B00↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 12Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenSession   endp

; ---------------------------------------------------------------------------
algn_1403FC19F:                         ; DATA XREF: .pdata:00000001400E2B00↑o
                align 20h
; Exported entry 2822. ZwOpenSymbolicLinkObject

; =============== S U B R O U T I N E =======================================


