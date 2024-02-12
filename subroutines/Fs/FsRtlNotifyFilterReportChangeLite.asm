FsRtlNotifyFilterReportChangeLite proc near
                                        ; DATA XREF: .pdata:000000014011C454↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h

                sub     rsp, 58h
                and     [rsp+58h+var_10], 0
                mov     eax, [rsp+58h+arg_40]
                mov     [rsp+58h+var_18], eax
                mov     rax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], rax
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], eax
                mov     eax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], eax
                call    FsRtlNotifyFilterReportChangeLiteEx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyFilterReportChangeLite endp
