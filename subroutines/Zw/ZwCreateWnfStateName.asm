ZwCreateWnfStateName proc near          ; CODE XREF: sub_1406B2570+2A9↓p
                                        ; sub_1406B40B8+15B↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0CCh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateWnfStateName endp
