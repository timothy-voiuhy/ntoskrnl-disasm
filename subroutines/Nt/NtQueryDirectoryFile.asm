NtQueryDirectoryFile proc near          ; DATA XREF: .pdata:0000000140105A14↑o
                                        ; PAGE:000000014098BBD8↓o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = byte ptr  48h
arg_48          = qword ptr  50h
arg_50          = byte ptr  58h

                push    rbx
                sub     rsp, 50h
                neg     [rsp+58h+arg_40]
                mov     rbx, rdx
                sbb     al, al
                and     al, 2
                movzx   r11d, al
                mov     al, r11b
                or      al, 1
                cmp     [rsp+58h+arg_50], 0
                movzx   r10d, al
                mov     rax, [rsp+58h+arg_48]
                cmovz   r10d, r11d
                mov     [rsp+58h+var_10], rax
                mov     eax, [rsp+58h+arg_38]
                movzx   edx, r10b
                mov     [rsp+58h+var_18], edx
                mov     rdx, rbx
                mov     [rsp+58h+var_20], eax
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], eax
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                call    NtQueryDirectoryFileEx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtQueryDirectoryFile endp
