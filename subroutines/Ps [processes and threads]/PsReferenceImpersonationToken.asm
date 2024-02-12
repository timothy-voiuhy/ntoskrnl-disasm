PsReferenceImpersonationToken proc near ; DATA XREF: .pdata:0000000140105384↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], r9
                mov     r9, r8
                mov     r8, rdx
                mov     edx, 1
                call    sub_140652700
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReferenceImpersonationToken endp
