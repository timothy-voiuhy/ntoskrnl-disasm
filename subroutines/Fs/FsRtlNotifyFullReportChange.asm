FsRtlNotifyFullReportChange proc near   ; DATA XREF: .pdata:000000014011C46C↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h

                mov     r11, rsp
                sub     rsp, 58h
                and     qword ptr [r11-10h], 0
                mov     rax, [rsp+58h+arg_40]
                mov     [r11-18h], rax
                mov     eax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], eax
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], eax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-30h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    FsRtlNotifyFilterReportChange
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyFullReportChange endp
