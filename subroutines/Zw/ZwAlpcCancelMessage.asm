ZwAlpcCancelMessage proc near           ; CODE XREF: sub_140677764+1979AE↓p
                                        ; DATA XREF: .pdata:00000001400E2284↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 78h ; 'x'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcCancelMessage endp
