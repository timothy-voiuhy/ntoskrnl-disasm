WheaLogInternalEvent proc near          ; CODE XREF: sub_1404B9C5C+60↓p
                                        ; sub_1404BCCD8+1DC↓p ...

var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 00000001404ACC42 SIZE 000000E4 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     edi, edi
                mov     rbx, rcx
                cmp     cs:dword_140C15E30, edi
                jz      loc_1404ACC42
                add     rcx, 18h
                lea     esi, [rdi+4]
                mov     eax, [rcx]
                test    al, 2
                jz      short loc_1403BAD92
                lea     rax, [rbx+0Ch]
                mov     [rbp+57h+var_40], rcx
                mov     rcx, cs:qword_140C13DF8
                lea     rdx, qword_14000D9E0
                mov     [rbp+57h+var_70], rax
                xor     r9d, r9d
                lea     rax, [rbx+10h]
                mov     [rbp+57h+var_68], rsi
                mov     [rbp+57h+var_60], rax
                xor     r8d, r8d
                lea     rax, [rbx+14h]
                mov     [rbp+57h+var_58], rsi
                mov     [rbp+57h+var_50], rax
                lea     rax, [rbx+8]
                mov     [rbp+57h+var_30], rax
                mov     eax, [rax]
                mov     [rbp+57h+var_18], eax
                lea     rax, [rbp+57h+var_70]
                mov     [rsp+0D0h+var_98], rax
                mov     dword ptr [rsp+0D0h+var_A0], 6
                mov     qword ptr [rsp+0D0h+var_A8], rdi
                mov     [rsp+0D0h+var_B0], rdi
                mov     [rbp+57h+var_48], rsi
                mov     [rbp+57h+var_38], rsi
                mov     [rbp+57h+var_28], rsi
                mov     [rbp+57h+var_20], rbx
                mov     [rbp+57h+var_14], edi
                call    EtwWriteEx
                mov     eax, [rbx+18h]

loc_1403BAD92:                          ; CODE XREF: WheaLogInternalEvent+45↑j
                test    sil, al
                jnz     loc_1404ACCE1

loc_1403BAD9B:                          ; CODE XREF: WheaLogInternalEvent+F2043↓j
                test    al, 8
                jnz     loc_1404ACD18

loc_1403BADA3:                          ; CODE XREF: WheaLogInternalEvent+F1F78↓j
                                        ; WheaLogInternalEvent+F200C↓j ...
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403BACD0
WheaLogInternalEvent endp
