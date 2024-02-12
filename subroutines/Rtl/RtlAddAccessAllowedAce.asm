RtlAddAccessAllowedAce proc near        ; CODE XREF: sub_140201C7C+13B↑p
                                        ; RtlCheckTokenMembershipEx+118↑p ...

var_18          = qword ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], r9
                mov     r9d, r8d
                xor     r8d, r8d
                call    sub_140622B20
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAccessAllowedAce endp
