ZwPulseEvent    proc near               ; DATA XREF: .pdata:00000001400E2BCC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 13Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwPulseEvent    endp

; ---------------------------------------------------------------------------
algn_1403FC3BF:                         ; DATA XREF: .pdata:00000001400E2BCC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FC3C0   proc near               ; DATA XREF: .pdata:00000001400E2BD8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 13Fh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FC3C0   endp

; ---------------------------------------------------------------------------
algn_1403FC3DF:                         ; DATA XREF: .pdata:00000001400E2BD8↑o
                align 20h
; Exported entry 2838. ZwQueryBootEntryOrder

; =============== S U B R O U T I N E =======================================


