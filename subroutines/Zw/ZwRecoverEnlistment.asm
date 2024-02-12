ZwRecoverEnlistment proc near           ; CODE XREF: sub_1408766DC+C1↓p
                                        ; DATA XREF: .pdata:00000001400E2DE8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 16Bh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRecoverEnlistment endp
