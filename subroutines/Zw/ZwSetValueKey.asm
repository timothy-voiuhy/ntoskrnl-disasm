ZwSetValueKey   proc near               ; CODE XREF: sub_14039B5FC+19↑p
                                        ; sub_1403B7D14+5B↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 60h ; '`'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetValueKey   endp

; ---------------------------------------------------------------------------
algn_1403FA7FF:                         ; DATA XREF: .pdata:00000001400E2164↑o
                align 20h
; Exported entry 2727. ZwCancelTimer

; =============== S U B R O U T I N E =======================================


