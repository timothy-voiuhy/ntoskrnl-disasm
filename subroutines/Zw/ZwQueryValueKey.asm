ZwQueryValueKey proc near               ; CODE XREF: sub_140394DF8+3D↑p
                                        ; sub_140399850+A5↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 17h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryValueKey endp
