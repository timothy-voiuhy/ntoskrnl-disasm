ZwSetInformationObject proc near        ; CODE XREF: sub_14067102C+1EE↓p
                                        ; sub_14067102C+26D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 5Ch ; '\'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationObject endp
