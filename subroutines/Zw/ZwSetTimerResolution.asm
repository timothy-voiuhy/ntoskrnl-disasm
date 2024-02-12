ZwSetTimerResolution proc near          ; CODE XREF: sub_14036CB04+121801↓p
                                        ; DATA XREF: .pdata:00000001400E313C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1B2h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetTimerResolution endp
