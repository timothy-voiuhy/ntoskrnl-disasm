HalSetRealTimeClock proc near           ; CODE XREF: sub_1407A8B4C+B7↓p
                                        ; sub_14094D3D0+223↓p ...

var_50          = dword ptr -50h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                push    rbp
                push    rdi
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                and     [rbp+var_30], 0
                xorps   xmm0, xmm0
                and     [rbp+var_28], 0
                mov     rdi, rcx
                mov     rbx, cs:qword_140C19358
                mov     r15d, 1
                movups  [rbp+var_20], xmm0
                test    rbx, rbx
                jz      loc_1404B6E57
                cmp     byte ptr [rbx], 0
                jz      loc_1404B6E57
                mov     esi, [rbx+4]
                lock or [rsp+50h+var_50], 0
                lea     rdx, [rbp+var_28]
                call    sub_140346894
                test    al, al
                jz      loc_1404B6E64
                xor     r8d, r8d
                test    esi, esi
                jz      short loc_1404B6E4D
                lea     rdx, [rbx+8]
                mov     rbx, [rbp+var_28]

loc_1404B6DEE:                          ; CODE XREF: HalSetRealTimeClock+D2↓j
                mov     rcx, [rdx]
                test    rcx, rcx
                js      short loc_1404B6E18
                lea     rax, [rcx+989680h]
                cmp     rbx, rax
                jl      short loc_1404B6E0B
                add     rbx, 989680h
                jmp     short loc_1404B6E38
; ---------------------------------------------------------------------------

loc_1404B6E0B:                          ; CODE XREF: HalSetRealTimeClock+90↑j
                cmp     rbx, rcx
                jl      short loc_1404B6E51
                add     rbx, rbx
                sub     rbx, rcx
                jmp     short loc_1404B6E38
; ---------------------------------------------------------------------------

loc_1404B6E18:                          ; CODE XREF: HalSetRealTimeClock+84↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     rcx, rax
                lea     rax, [rcx+989680h]
                cmp     rbx, rax
                jl      short loc_1404B6E46
                add     rbx, 0FFFFFFFFFF676980h

loc_1404B6E38:                          ; CODE XREF: HalSetRealTimeClock+99↑j
                                        ; HalSetRealTimeClock+A6↑j
                add     r8d, r15d
                add     rdx, 8
                cmp     r8d, esi
                jb      short loc_1404B6DEE
                jmp     short loc_1404B6E51
; ---------------------------------------------------------------------------

loc_1404B6E46:                          ; CODE XREF: HalSetRealTimeClock+BF↑j
                cmp     rbx, rcx
                jge     short loc_1404B6E64
                jmp     short loc_1404B6E51
; ---------------------------------------------------------------------------

loc_1404B6E4D:                          ; CODE XREF: HalSetRealTimeClock+74↑j
                mov     rbx, [rbp+var_28]

loc_1404B6E51:                          ; CODE XREF: HalSetRealTimeClock+9E↑j
                                        ; HalSetRealTimeClock+D4↑j ...
                mov     [rbp+var_30], rbx
                jmp     short loc_1404B6E6F
; ---------------------------------------------------------------------------

loc_1404B6E57:                          ; CODE XREF: HalSetRealTimeClock+47↑j
                                        ; HalSetRealTimeClock+50↑j
                lea     rdx, [rbp+var_30]
                call    sub_140346894
                test    al, al
                jnz     short loc_1404B6E6B

loc_1404B6E64:                          ; CODE XREF: HalSetRealTimeClock+69↑j
                                        ; HalSetRealTimeClock+D9↑j
                xor     al, al
                jmp     loc_1404B6F1F
; ---------------------------------------------------------------------------

loc_1404B6E6B:                          ; CODE XREF: HalSetRealTimeClock+F2↑j
                mov     rbx, [rbp+var_30]

loc_1404B6E6F:                          ; CODE XREF: HalSetRealTimeClock+E5↑j
                cmp     cs:dword_140CF4D0C, 0
                jnz     short loc_1404B6E8F
                call    sub_1402B95B0
                mov     rdx, [rax+428h]
                add     rbx, [rdx+1B8h]
                mov     [rbp+var_30], rbx

loc_1404B6E8F:                          ; CODE XREF: HalSetRealTimeClock+106↑j
                mov     ebx, cs:dword_140C0F3B0
                shr     ebx, 2
                and     ebx, r15d
                jz      short loc_1404B6EA5
                mov     rcx, rdi
                call    sub_1404CC58C

loc_1404B6EA5:                          ; CODE XREF: HalSetRealTimeClock+12B↑j
                mov     edi, cs:dword_140C49E4C
                mov     ecx, 0C0000001h
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_1404B6EDE
                test    edi, edi
                jnz     short loc_1404B6EDE
                lea     rdx, [rbp+var_20]
                lea     rcx, [rbp+var_30]
                call    sub_140865924
                mov     ecx, eax
                test    eax, eax
                js      short loc_1404B6EDE
                lea     rcx, [rbp+var_20]
                call    sub_140865840
                mov     ecx, eax
                test    eax, eax
                jns     short loc_1404B6F05

loc_1404B6EDE:                          ; CODE XREF: HalSetRealTimeClock+146↑j
                                        ; HalSetRealTimeClock+14A↑j ...
                cmp     bl, r15b
                jz      short loc_1404B6F05
                cmp     cs:byte_140C49E48, 0
                jz      short loc_1404B6F05
                test    edi, edi
                jz      short loc_1404B6F05
                mov     eax, cs:dword_140C0F3B0
                test    al, 8
                jnz     short loc_1404B6F05
                lea     rcx, [rbp+var_30]
                call    sub_1404C3EE0
                mov     ecx, eax

loc_1404B6F05:                          ; CODE XREF: HalSetRealTimeClock+16C↑j
                                        ; HalSetRealTimeClock+171↑j ...
                test    ecx, ecx
                lea     rcx, [rbp+var_30]
                cmovns  ebx, r15d
                call    sub_14034700C
                test    al, al
                movzx   ecx, bl
                cmovnz  ecx, r15d
                mov     al, cl

loc_1404B6F1F:                          ; CODE XREF: HalSetRealTimeClock+F6↑j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404B6D70
HalSetRealTimeClock endp
