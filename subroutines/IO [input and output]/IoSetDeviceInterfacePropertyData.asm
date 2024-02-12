IoSetDeviceInterfacePropertyData proc near
                                        ; DATA XREF: .pdata:000000014010B63C↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     r11, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], r11
                mov     rax, r11
                neg     rax
                mov     rax, r11
                sbb     r10d, r10d
                and     r10d, [rsp+48h+arg_28]
                neg     rax
                mov     [rsp+48h+var_20], r10d
                sbb     r9d, r9d
                and     r9d, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], r9d
                call    sub_14077C488
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetDeviceInterfacePropertyData endp
