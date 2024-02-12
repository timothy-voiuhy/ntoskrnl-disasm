ZwAddBootEntry  proc near               ; CODE XREF: sub_1409718B0+35↓p
                                        ; DATA XREF: .pdata:00000001400E21DC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 6Ah ; 'j'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAddBootEntry  endp

; ---------------------------------------------------------------------------
algn_1403FA93F:                         ; DATA XREF: .pdata:00000001400E21DC↑o
                align 20h
; Exported entry 2696. ZwAddDriverEntry

; =============== S U B R O U T I N E =======================================


