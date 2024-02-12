ZwSetBootOptions proc near              ; CODE XREF: sub_1409742B4+33↓p
                                        ; DATA XREF: .pdata:00000001400E2F5C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 18Ah
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetBootOptions endp
