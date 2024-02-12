IoBuildDeviceIoControlRequest proc near ; CODE XREF: IoVolumeDeviceToGuidPath+BA↓p
                                        ; IoVolumeDeviceNameToGuidPath+154↓p ...

var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = byte ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

                mov     r11, rsp
                sub     rsp, 58h
                mov     rax, [rsp+58h]
                mov     [r11-10h], rax
                mov     rax, [rsp+58h+arg_40]
                mov     [r11-18h], rax
                mov     rax, [rsp+58h+arg_38]
                mov     [r11-20h], rax
                mov     al, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], al
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], eax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    sub_14030FA70
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoBuildDeviceIoControlRequest endp
