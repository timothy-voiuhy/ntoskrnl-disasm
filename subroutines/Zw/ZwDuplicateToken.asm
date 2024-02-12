ZwDuplicateToken proc near              ; CODE XREF: RtlCheckTokenMembershipEx+2A1↑p
                                        ; sub_140363940+128FE4↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 42h ; 'B'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDuplicateToken endp
