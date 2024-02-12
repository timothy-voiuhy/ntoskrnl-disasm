ZwSetInformationThread proc near        ; CODE XREF: sub_1402B6518+216↑p
                                        ; sub_1402B6518+199BBB↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationThread endp
