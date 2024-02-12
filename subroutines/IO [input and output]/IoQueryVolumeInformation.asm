IoQueryVolumeInformation proc near      ; CODE XREF: sub_1407B624C+5C7↓p
                                        ; DATA XREF: .pdata:00000001400FB9B8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], r9
                xor     r9d, r9d
                call    sub_1405DD848
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueryVolumeInformation endp
