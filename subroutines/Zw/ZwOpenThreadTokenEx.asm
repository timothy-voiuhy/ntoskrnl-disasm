ZwOpenThreadTokenEx proc near           ; CODE XREF: sub_140711EE8+26↓p
                                        ; sub_14072CAC8+82↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 2Fh ; '/'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenThreadTokenEx endp
