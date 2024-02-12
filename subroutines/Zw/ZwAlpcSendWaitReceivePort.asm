ZwAlpcSendWaitReceivePort proc near     ; CODE XREF: sub_1402B2424+CC↑p
                                        ; sub_1402B2424+15B↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 8Ch
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcSendWaitReceivePort endp
