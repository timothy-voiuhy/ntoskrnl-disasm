ZwStopProfile   proc near               ; DATA XREF: .pdata:00000001400E31A8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BBh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwStopProfile   endp

; ---------------------------------------------------------------------------
algn_1403FD35F:                         ; DATA XREF: .pdata:00000001400E31A8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FD360   proc near               ; DATA XREF: .pdata:00000001400E31B4↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BCh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FD360   endp

; ---------------------------------------------------------------------------
algn_1403FD37F:                         ; DATA XREF: .pdata:00000001400E31B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FD380   proc near               ; DATA XREF: .pdata:00000001400E31C0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BDh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FD380   endp

; ---------------------------------------------------------------------------
algn_1403FD39F:                         ; DATA XREF: .pdata:00000001400E31C0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FD3A0   proc near               ; DATA XREF: .pdata:00000001400E31CC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BEh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FD3A0   endp

; ---------------------------------------------------------------------------
algn_1403FD3BF:                         ; DATA XREF: .pdata:00000001400E31CC↑o
                align 20h
; Exported entry 2932. ZwSystemDebugControl

; =============== S U B R O U T I N E =======================================


