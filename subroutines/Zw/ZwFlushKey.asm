ZwFlushKey      proc near               ; CODE XREF: sub_1405A0580+37B↓p
                                        ; sub_1405B280C+B9↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0EAh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwFlushKey      endp

; ---------------------------------------------------------------------------
algn_1403FB93F:                         ; DATA XREF: .pdata:00000001400E27DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB940   proc near               ; DATA XREF: .pdata:00000001400E27E8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0EBh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB940   endp

; ---------------------------------------------------------------------------
algn_1403FB95F:                         ; DATA XREF: .pdata:00000001400E27E8↑o
                align 20h
; Exported entry 2779. ZwFlushVirtualMemory

; =============== S U B R O U T I N E =======================================


