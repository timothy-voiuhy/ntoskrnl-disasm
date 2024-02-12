ZwDeleteWnfStateName proc near          ; CODE XREF: sub_14030CB40+25F↑p
                                        ; sub_1405F3400+BA↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D9h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeleteWnfStateName endp
