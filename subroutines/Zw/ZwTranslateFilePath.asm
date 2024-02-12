ZwTranslateFilePath proc near           ; CODE XREF: sub_1409527C0+2B0↓p
                                        ; sub_1409527C0+323↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1C6h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwTranslateFilePath endp
