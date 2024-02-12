ZwCreateSection proc near               ; CODE XREF: sub_1402B0760+49↑p
                                        ; sub_14038036C+141↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 4Ah ; 'J'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateSection endp
