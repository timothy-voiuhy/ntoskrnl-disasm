EtwWriteTransfer proc near              ; CODE XREF: sub_14075F328+67↓p
                                        ; DATA XREF: .pdata:00000001400CCBA0↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_10], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], eax
                mov     [rsp+48h+var_20], r9
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r8
                xor     r8d, r8d
                call    EtwWriteEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EtwWriteTransfer endp
