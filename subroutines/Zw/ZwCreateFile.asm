ZwCreateFile    proc near               ; CODE XREF: sub_14037136C+86↑p
                                        ; sub_14038036C+DD↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 55h ; 'U'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateFile    endp

; ---------------------------------------------------------------------------
algn_1403FA69F:                         ; DATA XREF: .pdata:00000001400E20E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA6A0   proc near               ; DATA XREF: .pdata:00000001400E20EC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 56h ; 'V'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA6A0   endp

; ---------------------------------------------------------------------------
algn_1403FA6BF:                         ; DATA XREF: .pdata:00000001400E20EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA6C0   proc near               ; DATA XREF: .pdata:00000001400E20F8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 57h ; 'W'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA6C0   endp

; ---------------------------------------------------------------------------
algn_1403FA6DF:                         ; DATA XREF: .pdata:00000001400E20F8↑o
                align 20h
; Exported entry 2805. ZwOpenDirectoryObject

; =============== S U B R O U T I N E =======================================


