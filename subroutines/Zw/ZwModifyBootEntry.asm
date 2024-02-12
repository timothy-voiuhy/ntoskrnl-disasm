ZwModifyBootEntry proc near             ; CODE XREF: sub_140973F68+2B↓p
                                        ; DATA XREF: .pdata:00000001400E29EC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 116h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwModifyBootEntry endp
