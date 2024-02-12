ZwQueryEaFile   proc near               ; DATA XREF: .pdata:00000001400E2C2C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 146h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryEaFile   endp

; ---------------------------------------------------------------------------
algn_1403FC4BF:                         ; DATA XREF: .pdata:00000001400E2C2C↑o
                align 20h
; Exported entry 2847. ZwQueryFullAttributesFile

; =============== S U B R O U T I N E =======================================


