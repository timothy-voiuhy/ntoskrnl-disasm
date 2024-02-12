LpcRequestWaitReplyPortEx proc near     ; DATA XREF: .pdata:000000014011E2E4↑o

var_18          = byte ptr -18h

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                mov     [rsp+38h+var_18], r9b
                call    sub_1408C362C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LpcRequestWaitReplyPortEx endp
