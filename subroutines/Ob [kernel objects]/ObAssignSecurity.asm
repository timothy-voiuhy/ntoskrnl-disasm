ObAssignSecurity proc near              ; DATA XREF: .pdata:000000014010AB50↑o

var_18          = dword ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 0
                and     [rsp+38h+var_18], 0
                call    sub_14062757C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObAssignSecurity endp
