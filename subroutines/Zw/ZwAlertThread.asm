ZwAlertThread   proc near               ; DATA XREF: .pdata:00000001400E2218↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 6Fh ; 'o'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlertThread   endp

; ---------------------------------------------------------------------------
algn_1403FA9DF:                         ; DATA XREF: .pdata:00000001400E2218↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA9E0   proc near               ; DATA XREF: .pdata:00000001400E2224↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 70h ; 'p'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA9E0   endp

; ---------------------------------------------------------------------------
algn_1403FA9FF:                         ; DATA XREF: .pdata:00000001400E2224↑o
                align 20h
; Exported entry 2699. ZwAllocateLocallyUniqueId

; =============== S U B R O U T I N E =======================================


