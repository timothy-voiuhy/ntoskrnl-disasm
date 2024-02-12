ZwAlpcAcceptConnectPort proc near       ; CODE XREF: sub_140677764+10C↓p
                                        ; sub_140677764+197956↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 77h ; 'w'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcAcceptConnectPort endp
