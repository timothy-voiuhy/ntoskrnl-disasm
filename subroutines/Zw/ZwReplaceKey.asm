ZwReplaceKey    proc near               ; DATA XREF: .pdata:00000001400E2E6C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 176h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwReplaceKey    endp

; ---------------------------------------------------------------------------
algn_1403FCABF:                         ; DATA XREF: .pdata:00000001400E2E6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCAC0   proc near               ; DATA XREF: .pdata:00000001400E2E78↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 177h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCAC0   endp

; ---------------------------------------------------------------------------
algn_1403FCADF:                         ; DATA XREF: .pdata:00000001400E2E78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FCAE0   proc near               ; DATA XREF: .pdata:00000001400E2E84↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 178h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FCAE0   endp

; ---------------------------------------------------------------------------
algn_1403FCAFF:                         ; DATA XREF: .pdata:00000001400E2E84↑o
                align 20h
; Exported entry 2886. ZwRequestPort

; =============== S U B R O U T I N E =======================================


