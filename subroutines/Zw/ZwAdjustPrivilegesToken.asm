ZwAdjustPrivilegesToken proc near       ; CODE XREF: sub_140711B78+180↓p
                                        ; sub_14071B328+30↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 41h ; 'A'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAdjustPrivilegesToken endp
