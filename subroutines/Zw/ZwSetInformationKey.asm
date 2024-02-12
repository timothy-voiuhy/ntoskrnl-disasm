ZwSetInformationKey proc near           ; CODE XREF: sub_14070663C+5F↓p
                                        ; sub_1408838B4+48↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 19Ah
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationKey endp
