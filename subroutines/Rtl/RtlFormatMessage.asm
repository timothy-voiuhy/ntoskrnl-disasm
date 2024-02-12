RtlFormatMessage proc near              ; DATA XREF: .pdata:0000000140121E6C↑o

var_38          = byte ptr -38h
var_20          = dword ptr -20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h

                mov     r11, rsp
                sub     rsp, 58h
                and     qword ptr [r11-10h], 0
                mov     rax, [rsp+58h+arg_40]
                mov     [r11-18h], rax
                mov     eax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], eax
                mov     rax, [rsp+58h+arg_30]
                mov     [r11-28h], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-30h], rax
                mov     al, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], al
                call    sub_140912678
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFormatMessage endp
