SeAssignSecurity proc near              ; CODE XREF: sub_140601BA0+38B↑p
                                        ; sub_14078C980+122↓p ...

var_38          = dword ptr -38h
var_30          = byte ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 58h
                xor     r10d, r10d
                test    rcx, rcx
                jz      short loc_1406032BB
                test    rdx, rdx
                jnz     short loc_1406032F8

loc_140603291:                          ; CODE XREF: SeAssignSecurity+7E↓j
                mov     r11d, 400h
                mov     eax, 1
                test    [rcx+2], r11w
                cmovnz  r10d, eax

loc_1406032A5:                          ; CODE XREF: SeAssignSecurity+7C↓j
                test    rdx, rdx
                jnz     short loc_140603300

loc_1406032AA:                          ; CODE XREF: SeAssignSecurity+84↓j
                mov     r11d, 800h
                test    [rcx+2], r11w
                jz      short loc_1406032BB
                or      r10d, 2

loc_1406032BB:                          ; CODE XREF: SeAssignSecurity+A↑j
                                        ; SeAssignSecurity+35↑j ...
                and     [rsp+58h+var_10], 0
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_18], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_20], rax
                mov     [rsp+58h+var_28], r10d
                mov     [rsp+58h+var_30], r9b
                xor     r9d, r9d
                and     [rsp+58h+var_38], 0
                call    sub_14061F5D0
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406032F8:                          ; CODE XREF: SeAssignSecurity+F↑j
                test    byte ptr [rdx+2], 4
                jnz     short loc_1406032A5
                jmp     short loc_140603291
; ---------------------------------------------------------------------------

loc_140603300:                          ; CODE XREF: SeAssignSecurity+28↑j
                test    byte ptr [rdx+2], 10h
                jz      short loc_1406032AA
                jmp     short loc_1406032BB
SeAssignSecurity endp
