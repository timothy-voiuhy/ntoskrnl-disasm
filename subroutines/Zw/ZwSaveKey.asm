ZwSaveKey       proc near               ; DATA XREF: .pdata:00000001400E2F14↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 184h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSaveKey       endp

; ---------------------------------------------------------------------------
algn_1403FCC7F:                         ; DATA XREF: .pdata:00000001400E2F14↑o
                align 20h
; Exported entry 2896. ZwSaveKeyEx

; =============== S U B R O U T I N E =======================================


