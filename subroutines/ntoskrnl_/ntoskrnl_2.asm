ntoskrnl_2      proc near               ; CODE XREF: sub_140A4DF14+200↓p
                                        ; DATA XREF: .pdata:00000001400E2650↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0C9h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ntoskrnl_2      endp

; ---------------------------------------------------------------------------
algn_1403FB51F:                         ; DATA XREF: .pdata:00000001400E2650↑o
                align 20h
; Exported entry 2757. ZwCreateWaitCompletionPacket

; =============== S U B R O U T I N E =======================================


