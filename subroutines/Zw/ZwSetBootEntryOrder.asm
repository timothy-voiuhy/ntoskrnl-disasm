ZwSetBootEntryOrder proc near           ; CODE XREF: sub_14097423C+33↓p
                                        ; DATA XREF: .pdata:00000001400E2F50↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 189h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetBootEntryOrder endp
