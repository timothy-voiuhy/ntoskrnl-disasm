ZwOpenTransaction proc near             ; CODE XREF: sub_14087723C+B5↓p
                                        ; DATA XREF: .pdata:00000001400E2B30↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 131h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenTransaction endp
