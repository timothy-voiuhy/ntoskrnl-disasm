ZwQueryBootEntryOrder proc near         ; CODE XREF: sub_14094C6D0+102↓p
                                        ; sub_14094C6D0+149↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 140h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryBootEntryOrder endp
