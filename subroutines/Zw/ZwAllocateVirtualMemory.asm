ZwAllocateVirtualMemory proc near       ; CODE XREF: sub_14035A0AC+89↑p
                                        ; sub_1403F7E44+52↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 18h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAllocateVirtualMemory endp
