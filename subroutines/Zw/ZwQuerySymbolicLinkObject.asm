ZwQuerySymbolicLinkObject proc near     ; CODE XREF: sub_140705EAC+95↓p
                                        ; sub_140779C50+68↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 15Fh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQuerySymbolicLinkObject endp
