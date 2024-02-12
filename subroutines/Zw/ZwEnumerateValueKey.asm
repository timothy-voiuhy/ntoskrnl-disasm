ZwEnumerateValueKey proc near           ; CODE XREF: sub_14062B088+2CE↓p
                                        ; sub_1407121B8+A4↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 13h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwEnumerateValueKey endp
