ZwOpenProcessTokenEx proc near          ; CODE XREF: sub_140711DB4+89↓p
                                        ; sub_14072CAC8+A2↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 30h ; '0'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenProcessTokenEx endp
