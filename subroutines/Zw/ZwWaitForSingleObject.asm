ZwWaitForSingleObject proc near         ; CODE XREF: sub_140364EF0+1E↑p
                                        ; sub_1404EC050+37↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 4
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwWaitForSingleObject endp
