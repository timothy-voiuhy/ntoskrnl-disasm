ZwDeleteFile    proc near               ; CODE XREF: sub_14077B180+23B↓p
                                        ; sub_14077B180+278↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D3h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeleteFile    endp

; ---------------------------------------------------------------------------
algn_1403FB65F:                         ; DATA XREF: .pdata:00000001400E26C8↑o
                align 20h
; Exported entry 2762. ZwDeleteKey

; =============== S U B R O U T I N E =======================================


