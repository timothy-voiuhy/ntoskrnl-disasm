ZwOpenEnlistment proc near              ; CODE XREF: sub_1408766DC+AE↓p
                                        ; DATA XREF: .pdata:00000001400E2A40↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 11Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenEnlistment endp
