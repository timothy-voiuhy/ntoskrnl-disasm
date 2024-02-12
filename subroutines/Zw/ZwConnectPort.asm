ZwConnectPort   proc near               ; CODE XREF: sub_1407AD0F0+212↓p
                                        ; DATA XREF: .pdata:00000001400E2464↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0A0h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwConnectPort   endp

; ---------------------------------------------------------------------------
algn_1403FAFFF:                         ; DATA XREF: .pdata:00000001400E2464↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB000   proc near               ; DATA XREF: .pdata:00000001400E2470↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0A1h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB000   endp

; ---------------------------------------------------------------------------
algn_1403FB01F:                         ; DATA XREF: .pdata:00000001400E2470↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB020   proc near               ; DATA XREF: .pdata:00000001400E247C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0A2h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB020   endp

; ---------------------------------------------------------------------------
algn_1403FB03F:                         ; DATA XREF: .pdata:00000001400E247C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FB040   proc near               ; DATA XREF: .pdata:00000001400E2488↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0A3h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FB040   endp

; ---------------------------------------------------------------------------
algn_1403FB05F:                         ; DATA XREF: .pdata:00000001400E2488↑o
                align 20h
; Exported entry 2738. ZwCreateCrossVmEvent

; =============== S U B R O U T I N E =======================================


