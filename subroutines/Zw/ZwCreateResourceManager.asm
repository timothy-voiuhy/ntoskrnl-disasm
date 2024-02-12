ZwCreateResourceManager proc near       ; CODE XREF: sub_1406D6AE8+5A8↓p
                                        ; DATA XREF: .pdata:00000001400E25CC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0BEh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateResourceManager endp
