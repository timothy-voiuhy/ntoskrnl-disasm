ZwTraceEvent    proc near               ; DATA XREF: .pdata:00000001400E214C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 5Eh ; '^'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwTraceEvent    endp

; ---------------------------------------------------------------------------
algn_1403FA7BF:                         ; DATA XREF: .pdata:00000001400E214C↑o
                align 20h
; Exported entry 2829. ZwPowerInformation

; =============== S U B R O U T I N E =======================================


