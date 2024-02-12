ZwQuerySection  proc near               ; CODE XREF: sub_1402B07BC+28↑p
                                        ; DATA XREF: .pdata:00000001400E20B0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 51h ; 'Q'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQuerySection  endp

; ---------------------------------------------------------------------------
algn_1403FA61F:                         ; DATA XREF: .pdata:00000001400E20B0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA620   proc near               ; CODE XREF: sub_1402B6518+14F↑p
                                        ; sub_140888500+250↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 52h ; 'R'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA620   endp

; ---------------------------------------------------------------------------
algn_1403FA63F:                         ; DATA XREF: .pdata:00000001400E20BC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA640   proc near               ; CODE XREF: sub_140526110+574↓p
                                        ; RtlAssert+CB↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 53h ; 'S'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA640   endp

; ---------------------------------------------------------------------------
algn_1403FA65F:                         ; DATA XREF: .pdata:00000001400E20C8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA660   proc near               ; DATA XREF: .pdata:00000001400E20D4↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 54h ; 'T'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA660   endp

; ---------------------------------------------------------------------------
algn_1403FA67F:                         ; DATA XREF: .pdata:00000001400E20D4↑o
                align 20h
; Exported entry 2742. ZwCreateFile

; =============== S U B R O U T I N E =======================================


