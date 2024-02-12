ZwPowerInformation proc near            ; CODE XREF: sub_1404BE658+46↓p
                                        ; sub_140676AA0+6D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 5Fh ; '_'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwPowerInformation endp
