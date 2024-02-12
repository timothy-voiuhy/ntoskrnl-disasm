ZwRequestWaitReplyPort proc near        ; CODE XREF: sub_140355168+130880↓p
                                        ; DATA XREF: .pdata:00000001400E1E7C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 22h ; '"'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwRequestWaitReplyPort endp
