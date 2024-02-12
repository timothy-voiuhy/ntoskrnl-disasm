ZwRenameKey     proc near               ; CODE XREF: sub_140883858+36↓p
                                        ; DATA XREF: .pdata:00000001400E2E54↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 174h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRenameKey     endp

; ---------------------------------------------------------------------------
algn_1403FCA7F:                         ; DATA XREF: .pdata:00000001400E2E54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCA80   proc near               ; DATA XREF: .pdata:00000001400E2E60↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 175h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCA80   endp

; ---------------------------------------------------------------------------
algn_1403FCA9F:                         ; DATA XREF: .pdata:00000001400E2E60↑o
                align 20h
; Exported entry 2885. ZwReplaceKey

; =============== S U B R O U T I N E =======================================


