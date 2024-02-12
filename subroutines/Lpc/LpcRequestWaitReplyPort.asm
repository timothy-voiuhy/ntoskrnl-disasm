LpcRequestWaitReplyPort proc near       ; DATA XREF: .pdata:000000014011E2D8↑o

var_18          = byte ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], 0
                call    sub_1408C362C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LpcRequestWaitReplyPort endp
