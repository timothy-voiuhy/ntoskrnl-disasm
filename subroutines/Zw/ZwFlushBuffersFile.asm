ZwFlushBuffersFile proc near            ; CODE XREF: sub_1402B065C+1F↑p
                                        ; sub_1403A79F0+37↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 4Bh ; 'K'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwFlushBuffersFile endp
