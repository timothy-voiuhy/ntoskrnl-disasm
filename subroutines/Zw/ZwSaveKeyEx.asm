ZwSaveKeyEx     proc near               ; DATA XREF: .pdata:00000001400E2F20↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 185h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSaveKeyEx     endp

; ---------------------------------------------------------------------------
algn_1403FCC9F:                         ; DATA XREF: .pdata:00000001400E2F20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCCA0   proc near               ; CODE XREF: sub_14086B000+13F↓p
                                        ; DATA XREF: .pdata:00000001400E2F2C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 186h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCCA0   endp

; ---------------------------------------------------------------------------
algn_1403FCCBF:                         ; DATA XREF: .pdata:00000001400E2F2C↑o
                align 20h
; Exported entry 2897. ZwSecureConnectPort

; =============== S U B R O U T I N E =======================================


