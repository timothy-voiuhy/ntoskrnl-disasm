ZwCreateKey     proc near               ; CODE XREF: sub_14039B5C8+22↑p
                                        ; sub_1403A62CC+5F↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateKey     endp

; ---------------------------------------------------------------------------
algn_1403F9F9F:                         ; DATA XREF: .pdata:00000001400E1E40↑o
                align 20h
; Exported entry 2780. ZwFreeVirtualMemory

; =============== S U B R O U T I N E =======================================


