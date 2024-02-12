ZwSetSecurityObject proc near           ; CODE XREF: sub_14039B58C+9↑p
                                        ; sub_1403F0A20+28↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1A9h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetSecurityObject endp
