SeAssignSecurityEx proc near            ; DATA XREF: .pdata:00000001401058D0↑o

var_38          = byte ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                sub     rsp, 58h
                mov     rax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_18], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_20], rax
                and     [rsp+58h+var_28], 0
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], eax
                mov     al, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], al
                call    sub_14021BC50
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAssignSecurityEx endp
