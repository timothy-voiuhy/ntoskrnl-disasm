MmMapViewOfSection proc near            ; CODE XREF: sub_140582FB4+888↑p
                                        ; sub_14058449C+8D↑p ...

var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_70          = qword ptr -70h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = dword ptr  50h

; FUNCTION CHUNK AT 00000001407F5CA8 SIZE 0000001C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 0C0h
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbp, rcx
                xor     edx, edx
                mov     r8d, 80h
                lea     rcx, [rsp+0C8h+var_88]
                mov     rbx, r9
                call    memset
                mov     eax, [rsp+0C8h+arg_48]
                lea     rcx, [rsp+0C8h+var_88]
                mov     r9, [rsi]
                mov     r8, rdi
                mov     [rsp+0C8h+var_90], rbx
                mov     rdx, rbp
                mov     rbx, [rsp+0C8h+arg_30]
                mov     [rsp+0C8h+var_98], eax
                mov     eax, [rsp+0C8h+arg_40]
                mov     [rsp+0C8h+var_A0], eax
                mov     rax, [rbx]
                mov     [rsp+0C8h+var_A8], rax
                call    sub_140658650
                test    eax, eax
                js      short loc_1405F22E3
                mov     eax, [rsp+0C8h+arg_38]
                lea     rdx, [rsp+0C8h+var_88]
                mov     r9, [rsp+0C8h+arg_20]
                mov     r8, rsi
                mov     [rsp+0C8h+var_98], 1
                mov     rcx, rbp
                mov     [rsp+0C8h+var_A0], eax
                mov     rax, [rsp+0C8h+arg_28]
                mov     [rsp+0C8h+var_A8], rax
                call    sub_1406580D0
                mov     ecx, eax
                test    eax, eax
                js      loc_1407F5CA8
                mov     rax, [rsp+0C8h+var_70]
                mov     [rbx], rax
                mov     eax, ecx

loc_1405F22E3:                          ; CODE XREF: MmMapViewOfSection+75↑j
                                        ; MmMapViewOfSection+203A94↓j ...
                lea     r11, [rsp+0C8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapViewOfSection endp
