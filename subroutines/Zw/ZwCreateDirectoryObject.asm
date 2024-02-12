ZwCreateDirectoryObject proc near       ; CODE XREF: sub_1406C8D48+129↓p
                                        ; sub_14079D018+18B↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0A7h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateDirectoryObject endp
