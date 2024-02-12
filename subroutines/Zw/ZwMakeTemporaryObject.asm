ZwMakeTemporaryObject proc near         ; CODE XREF: sub_140706AB4+2F3↓p
                                        ; IoDeleteSymbolicLink+55↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 110h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwMakeTemporaryObject endp
