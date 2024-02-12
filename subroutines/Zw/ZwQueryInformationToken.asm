ZwQueryInformationToken proc near       ; CODE XREF: RtlCheckTokenCapability+163↓p
                                        ; sub_1405BAB8C+83↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 21h ; '!'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryInformationToken endp
