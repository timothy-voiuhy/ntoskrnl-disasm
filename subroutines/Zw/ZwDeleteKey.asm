ZwDeleteKey     proc near               ; CODE XREF: sub_14038CD78+4↑p
                                        ; sub_140765728:loc_14076575F↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D4h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeleteKey     endp

; ---------------------------------------------------------------------------
algn_1403FB67F:                         ; DATA XREF: .pdata:00000001400E26D4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB680   proc near               ; DATA XREF: .pdata:00000001400E26E0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D5h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB680   endp

; ---------------------------------------------------------------------------
algn_1403FB69F:                         ; DATA XREF: .pdata:00000001400E26E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB6A0   proc near               ; DATA XREF: .pdata:00000001400E26EC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D6h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB6A0   endp

; ---------------------------------------------------------------------------
algn_1403FB6BF:                         ; DATA XREF: .pdata:00000001400E26EC↑o
                align 20h
; Exported entry 2763. ZwDeleteValueKey

; =============== S U B R O U T I N E =======================================


