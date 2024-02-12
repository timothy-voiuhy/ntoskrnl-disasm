ZwOpenResourceManager proc near         ; CODE XREF: sub_1406D6AE8+149A9A↓p
                                        ; DATA XREF: .pdata:00000001400E2AE8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 12Bh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenResourceManager endp
