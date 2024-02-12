SeAccessCheckWithHint proc near         ; CODE XREF: SeAccessCheckFromStateEx+7E↑p
                                        ; RtlCheckTokenMembershipEx+1DB↓p ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

                sub     rsp, 68h
                mov     rax, [rsp+68h+arg_50]
                mov     [rsp+68h+var_10], 0
                mov     [rsp+68h+var_18], rax
                mov     rax, [rsp+68h+arg_48]
                mov     [rsp+68h+var_20], rax
                movzx   eax, [rsp+68h+arg_40]
                mov     [rsp+68h+var_28], al
                mov     rax, [rsp+68h+arg_38]
                mov     [rsp+68h+var_30], rax
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_38], rax
                mov     eax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], eax
                mov     eax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], eax
                call    sub_140248760
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAccessCheckWithHint endp
