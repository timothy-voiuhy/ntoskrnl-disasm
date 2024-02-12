ZwSetInformationProcess proc near       ; CODE XREF: sub_14068DA84+101↓p
                                        ; sub_1407103F8+F3↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1Ch
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationProcess endp
