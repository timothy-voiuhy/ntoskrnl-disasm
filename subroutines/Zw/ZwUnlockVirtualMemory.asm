ZwUnlockVirtualMemory proc near         ; CODE XREF: sub_1402B0EC8+24↑p
                                        ; sub_1402ECB60+1753B8↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1CDh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnlockVirtualMemory endp
