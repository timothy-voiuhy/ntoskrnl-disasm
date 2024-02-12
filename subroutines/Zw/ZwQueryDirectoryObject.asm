ZwQueryDirectoryObject proc near        ; CODE XREF: sub_140626480+106↓p
                                        ; sub_140706AB4+19B↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 144h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryDirectoryObject endp
