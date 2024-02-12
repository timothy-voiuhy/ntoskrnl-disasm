ZwSetCachedSigningLevel proc near       ; CODE XREF: sub_140726DF4+30E↓p
                                        ; DATA XREF: .pdata:00000001400E2F68↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 18Bh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetCachedSigningLevel endp
