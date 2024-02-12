ZwSetSystemTime proc near               ; CODE XREF: sub_1405D125C+C2↓p
                                        ; sub_14094D2D0+2D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1AEh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetSystemTime endp
