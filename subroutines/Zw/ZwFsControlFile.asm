ZwFsControlFile proc near               ; CODE XREF: sub_14020ACA0+1D2↑p
                                        ; sub_1405F7EE0+25B↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 39h ; '9'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwFsControlFile endp
