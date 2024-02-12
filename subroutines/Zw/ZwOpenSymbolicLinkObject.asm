ZwOpenSymbolicLinkObject proc near      ; CODE XREF: sub_140705EAC+6A↓p
                                        ; sub_140705EAC+FF↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 12Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenSymbolicLinkObject endp
