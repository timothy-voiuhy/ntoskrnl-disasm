FsRtlNotifyFullChangeDirectory proc near
                                        ; DATA XREF: .pdata:000000014011C460↑o

var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = dword ptr -38h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

                mov     r11, rsp
                sub     rsp, 68h
                and     qword ptr [r11-18h], 0
                mov     rax, [rsp+68h+arg_48]
                mov     [r11-20h], rax
                mov     rax, [rsp+68h+arg_40]
                mov     [r11-28h], rax
                mov     rax, [rsp+68h+arg_38]
                mov     [r11-30h], rax
                mov     eax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_38], eax
                mov     al, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], al
                mov     al, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], al
                call    FsRtlNotifyFilterChangeDirectory
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyFullChangeDirectory endp
