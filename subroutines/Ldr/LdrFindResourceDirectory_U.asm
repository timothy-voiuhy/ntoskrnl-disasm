LdrFindResourceDirectory_U proc near    ; DATA XREF: .pdata:0000000140121E30↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                mov     r9d, 2
                call    sub_1406F1074
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LdrFindResourceDirectory_U endp
