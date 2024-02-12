ZwCreateSymbolicLinkObject proc near    ; CODE XREF: sub_1406C8D48+1C9↓p
                                        ; sub_140740BCC+331↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0C1h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateSymbolicLinkObject endp
