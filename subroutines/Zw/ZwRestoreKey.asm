ZwRestoreKey    proc near               ; DATA XREF: .pdata:00000001400E2EB4↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 17Ch
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRestoreKey    endp

; ---------------------------------------------------------------------------
algn_1403FCB7F:                         ; DATA XREF: .pdata:00000001400E2EB4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCB80   proc near               ; DATA XREF: .pdata:00000001400E2EC0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 17Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCB80   endp

; ---------------------------------------------------------------------------
algn_1403FCB9F:                         ; DATA XREF: .pdata:00000001400E2EC0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCBA0   proc near               ; DATA XREF: .pdata:00000001400E2ECC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 17Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCBA0   endp

; ---------------------------------------------------------------------------
algn_1403FCBBF:                         ; DATA XREF: .pdata:00000001400E2ECC↑o
                align 20h
; Exported entry 2891. ZwRollbackComplete

; =============== S U B R O U T I N E =======================================


