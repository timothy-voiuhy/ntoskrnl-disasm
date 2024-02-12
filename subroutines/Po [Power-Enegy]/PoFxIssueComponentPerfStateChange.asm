PoFxIssueComponentPerfStateChange proc near
                                        ; DATA XREF: .pdata:00000001400F6504↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], rax
                mov     [rsp+38h+var_18], r9
                mov     r9d, 1
                call    PoFxIssueComponentPerfStateChangeMultiple
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxIssueComponentPerfStateChange endp
