RtlCheckTokenMembership proc near       ; CODE XREF: sub_1406797D8+43↓p
                                        ; sub_14067B764+265↓p ...
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    RtlCheckTokenMembershipEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCheckTokenMembership endp
