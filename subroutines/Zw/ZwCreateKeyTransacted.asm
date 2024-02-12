ZwCreateKeyTransacted proc near         ; DATA XREF: .pdata:00000001400E2524↑o
                                        ; sub_14097E2E0+10↓o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0B0h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateKeyTransacted endp
