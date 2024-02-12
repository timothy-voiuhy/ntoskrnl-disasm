ObOpenObjectByPointerWithTag proc near  ; CODE XREF: sub_1404EEA08+1EC↑p
                                        ; DATA XREF: .pdata:000000014011F328↑o

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_38          = qword ptr  40h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_38]
                mov     [rsp+48h+var_18], rax
                mov     al, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], al
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    ObOpenObjectByPointer
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObOpenObjectByPointerWithTag endp
