ZwQueryBootOptions proc near            ; CODE XREF: sub_1409740AC+43↓p
                                        ; sub_1409740AC+7A↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 141h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryBootOptions endp
