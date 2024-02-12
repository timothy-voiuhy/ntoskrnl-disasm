ZwRecoverTransactionManager proc near   ; CODE XREF: sub_1406D6AE8+4C4↓p
                                        ; DATA XREF: .pdata:00000001400E2E00↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 16Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRecoverTransactionManager endp
