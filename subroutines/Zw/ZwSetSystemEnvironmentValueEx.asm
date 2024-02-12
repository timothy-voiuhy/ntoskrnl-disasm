ZwSetSystemEnvironmentValueEx proc near ; CODE XREF: sub_140972FFC+C0↓p
                                        ; DATA XREF: .pdata:00000001400E30E8↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1ABh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetSystemEnvironmentValueEx endp
