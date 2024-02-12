ZwEnumerateBootEntries proc near        ; CODE XREF: sub_14094C6D0+96↓p
                                        ; sub_14094C6D0+EC↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0DFh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwEnumerateBootEntries endp
