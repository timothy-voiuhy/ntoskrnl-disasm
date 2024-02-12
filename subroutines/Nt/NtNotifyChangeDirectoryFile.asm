NtNotifyChangeDirectoryFile proc near   ; DATA XREF: .pdata:0000000140106188↑o
                                        ; PAGE:000000014098BF68↓o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = byte ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = byte ptr  48h

                sub     rsp, 58h
                mov     al, [rsp+58h+arg_40]
                mov     [rsp+58h+var_10], 1
                mov     [rsp+58h+var_18], al
                mov     eax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], eax
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], eax
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                call    NtNotifyChangeDirectoryFileEx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtNotifyChangeDirectoryFile endp
