ntoskrnl_19     proc near               ; CODE XREF: sub_1407055A0+29↓p
                                        ; sub_14070C7D4+63↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 133h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ntoskrnl_19     endp

; ---------------------------------------------------------------------------
algn_1403FC25F:                         ; DATA XREF: .pdata:00000001400E2B48↑o
                align 20h
; Exported entry 2830. ZwPrePrepareComplete

; =============== S U B R O U T I N E =======================================


