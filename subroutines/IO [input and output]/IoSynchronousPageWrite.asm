IoSynchronousPageWrite proc near        ; CODE XREF: sub_14092E534+15C↓p
                                        ; DATA XREF: .pdata:00000001400CFB28↑o

var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], rax
                and     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], 0
                call    sub_1402A2558
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSynchronousPageWrite endp
