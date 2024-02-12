ZwClearEvent    proc near               ; DATA XREF: .pdata:00000001400E1FCC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 3Eh ; '>'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwClearEvent    endp

; ---------------------------------------------------------------------------
algn_1403FA3BF:                         ; DATA XREF: .pdata:00000001400E1FCC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA3C0   proc near               ; CODE XREF: MmCopyMemory+2C6↑p
                                        ; DATA XREF: .pdata:00000001400E1FD8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 3Fh ; '?'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA3C0   endp

; ---------------------------------------------------------------------------
algn_1403FA3DF:                         ; DATA XREF: .pdata:00000001400E1FD8↑o
                align 20h
; Exported entry 2807. ZwOpenEvent

; =============== S U B R O U T I N E =======================================


