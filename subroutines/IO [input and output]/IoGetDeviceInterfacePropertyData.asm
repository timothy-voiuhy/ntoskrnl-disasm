IoGetDeviceInterfacePropertyData proc near
                                        ; DATA XREF: .pdata:000000014011CFF4↑o

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_38]
                mov     [rsp+48h+var_10], rax
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    sub_1408A40E0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDeviceInterfacePropertyData endp
