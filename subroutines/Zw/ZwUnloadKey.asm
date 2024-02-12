ZwUnloadKey     proc near               ; CODE XREF: sub_1405D5384+130↓p
                                        ; sub_140778194:loc_14077828D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1C9h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnloadKey     endp

; ---------------------------------------------------------------------------
algn_1403FD51F:                         ; DATA XREF: .pdata:00000001400E3250↑o
                align 20h
; Exported entry 2940. ZwUnloadKey2

; =============== S U B R O U T I N E =======================================


