WheaReportHwErrorDeviceDriver proc near ; DATA XREF: .pdata:0000000140124D40↑o

var_18          = dword ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                mov     r11, rsp
                sub     rsp, 58h
                mov     rax, [rsp+58h+arg_30]
                xor     r10d, r10d
                mov     [r11-10h], rax
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_18], eax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-20h], r10d
                mov     [r11-28h], rax
                mov     [r11-30h], r10d
                mov     [r11-38h], r10
                call    WheaReportHwErrorDeviceDriverEx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaReportHwErrorDeviceDriver endp
