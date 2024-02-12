ZwSetSystemInformation proc near        ; CODE XREF: sub_14059E480+2F2↓p
                                        ; sub_140687200+69F↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1ACh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetSystemInformation endp
