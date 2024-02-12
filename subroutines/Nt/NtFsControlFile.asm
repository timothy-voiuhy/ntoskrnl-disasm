NtFsControlFile proc near               ; DATA XREF: .pdata:0000000140104EE0↑o
                                        ; PAGE:000000014098B038↓o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h
arg_48          = dword ptr  50h

                sub     rsp, 68h
                mov     eax, [rsp+68h+arg_48]
                mov     [rsp+68h+var_18], 0
                mov     [rsp+68h+var_20], eax
                mov     rax, [rsp+68h+arg_40]
                mov     [rsp+68h+var_28], rax
                mov     eax, [rsp+68h+arg_38]
                mov     [rsp+68h+var_30], eax
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_38], rax
                mov     eax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], eax
                mov     rax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], rax
                call    sub_1406431F0
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtFsControlFile endp
