ExInitializeLookasideListEx proc near   ; CODE XREF: sub_140798AB0+1A6↓p
                                        ; DATA XREF: .pdata:00000001400D0A28↑o

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = word ptr -20h
var_18          = dword ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = word ptr  40h

                sub     rsp, 58h
                and     [rsp+58h+var_18], 0
                movzx   eax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], ax
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], eax
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], rax
                mov     eax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], eax
                call    sub_1402B54F0
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInitializeLookasideListEx endp
