ZwAlpcDisconnectPort proc near          ; CODE XREF: sub_1408881F4+28D↓p
                                        ; DATA XREF: .pdata:00000001400E2314↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 84h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcDisconnectPort endp
