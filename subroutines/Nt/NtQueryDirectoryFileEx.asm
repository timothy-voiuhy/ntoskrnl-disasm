NtQueryDirectoryFileEx proc near        ; CODE XREF: NtQueryDirectoryFile+75↓p
                                        ; DATA XREF: .pdata:00000001400FD1E8↑o ...

var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_68          = dword ptr -68h
var_20          = byte ptr -20h
var_1F          = byte ptr -1Fh
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h
arg_38          = dword ptr  48h
arg_40          = dword ptr  50h
arg_48          = qword ptr  58h

                mov     r11, rsp
                push    rbp
                lea     rbp, [r11-2Fh]
                sub     rsp, 0A0h
                and     [rbp+27h+var_8], 0
                lea     rax, [rbp+27h+var_1F]
                and     [rbp+27h+var_10], 0
                and     [rbp+27h+var_18], 0
                mov     [r11-30h], rax
                lea     rax, [rbp+27h+var_18]
                mov     [r11-38h], rax
                lea     rax, [rbp+27h+var_10]
                mov     [r11-40h], rax
                lea     rax, [rbp+27h+var_8]
                mov     [r11-48h], rax
                lea     rax, [rbp+27h+var_20]
                mov     [r11-50h], rax
                mov     rax, [rbp+27h+arg_48]
                mov     [r11-60h], rax
                mov     eax, [rbp+27h+arg_40]
                mov     [rsp+40h], eax
                mov     eax, [rbp+27h+arg_38]
                mov     [rsp+0A0h+var_68], eax
                mov     eax, [rbp+27h+arg_30]
                mov     [rsp+0A0h+var_70], eax
                mov     rax, [rbp+27h+arg_28]
                mov     [r11-80h], rax
                mov     rax, [rbp+27h+arg_20]
                mov     qword ptr [rsp+0A0h+var_80], rax
                mov     [rbp+27h+var_20], 0
                mov     [rbp+27h+var_1F], 0
                call    sub_14060B190
                test    eax, eax
                jnz     short loc_14060B17F
                mov     al, [rbp+27h+var_20]
                mov     r9b, 1
                mov     r8, [rbp+27h+var_18]
                mov     rdx, [rbp+27h+var_10]
                mov     rcx, [rbp+27h+var_8]
                mov     [rsp+0A0h+var_70], 2
                mov     byte ptr [rsp+0A0h+var_78], al
                mov     al, [rbp+27h+var_1F]
                mov     [rsp+0A0h+var_80], al
                call    sub_140643F60

loc_14060B17F:                          ; CODE XREF: NtQueryDirectoryFileEx+83↑j
                add     rsp, 0A0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtQueryDirectoryFileEx endp
