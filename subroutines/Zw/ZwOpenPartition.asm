ZwOpenPartition proc near               ; CODE XREF: sub_140899090+A8↓p
                                        ; DATA XREF: .pdata:00000001400E2AB8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 127h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenPartition endp
