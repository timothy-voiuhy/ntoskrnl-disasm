SeAccessCheckFromStateEx proc near      ; CODE XREF: SeAccessCheckFromState+D0↑p
                                        ; DATA XREF: .rdata:0000000140050038↑o ...

var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001404282AE SIZE 00000015 BYTES

                mov     r11, rsp
                sub     rsp, 88h
                xor     eax, eax
                mov     [r11-18h], rdx
                mov     [r11-28h], rax
                mov     [r11-20h], rax
                mov     [r11-10h], rax
                test    r8, r8
                jnz     loc_1404282AE

loc_14021CDF5:                          ; CODE XREF: SeAccessCheckFromStateEx+20B4EE↓j
                mov     rax, [rsp+88h+arg_48]
                lea     r8, [rsp+88h+var_28]
                mov     [rsp+88h+var_38], rax
                xor     edx, edx
                mov     rax, [rsp+88h+arg_40]
                mov     [rsp+88h+var_40], rax
                mov     al, [rsp+88h+arg_38]
                mov     [rsp+88h+var_48], al
                mov     rax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_50], rax
                mov     rax, [rsp+88h+arg_28]
                mov     [rsp+88h+var_58], rax
                mov     eax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_60], eax
                mov     [rsp+88h+var_68], r9d
                mov     r9b, 1
                call    SeAccessCheckWithHint
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAccessCheckFromStateEx endp
