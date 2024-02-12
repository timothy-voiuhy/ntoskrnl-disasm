ZwCreateTransactionManager proc near    ; CODE XREF: sub_1406D6AE8+4A9↓p
                                        ; DATA XREF: .pdata:00000001400E2644↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0C8h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateTransactionManager endp
