ZwOpenKeyTransacted proc near           ; DATA XREF: .pdata:00000001400E2A7C↑o
                                        ; sub_14062CF1C+1D5962↓o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 122h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenKeyTransacted endp
