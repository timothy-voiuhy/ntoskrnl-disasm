ZwFlushInstructionCache proc near       ; CODE XREF: sub_1405D7FA8+10E↓p
                                        ; sub_1406AD224+64E↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0E9h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwFlushInstructionCache endp
