ZwOpenDirectoryObject proc near         ; CODE XREF: sub_140626480+81↓p
                                        ; sub_140706AB4+13A↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 58h ; 'X'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenDirectoryObject endp
