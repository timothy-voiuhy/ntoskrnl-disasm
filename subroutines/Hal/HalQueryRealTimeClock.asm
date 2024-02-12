HalQueryRealTimeClock proc near         ; CODE XREF: sub_1404D2AA8+3E↓p
                                        ; sub_1407A8B4C+43↓p ...

var_70          = dword ptr -70h
var_50          = byte ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                mov     [rsp-18h+arg_18], rdi
                push    rbp
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                and     [rbp+var_48], 0
                xorps   xmm0, xmm0
                mov     r14, rcx
                mov     [rbp+var_50], 0
                xor     ecx, ecx
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_38], xmm0
                call    sub_14034700C
                mov     edi, cs:dword_140C0F3B0
                shr     edi, 2
                and     edi, 1
                jz      short loc_14034645E
                lea     rcx, [rbp+var_38]
                call    sub_140346DF8

loc_14034645E:                          ; CODE XREF: HalQueryRealTimeClock+53↑j
                and     [rbp+var_40], 0
                xorps   xmm0, xmm0
                mov     rbx, cs:qword_140C19358
                movups  [rbp+var_28], xmm0
                test    rbx, rbx
                jz      loc_14034651E
                cmp     byte ptr [rbx], 0
                jz      loc_14034651E
                mov     esi, [rbx+4]
                lock or [rsp+70h+var_70], 0
                lea     rdx, [rbp+var_40]
                lea     rcx, [rbp+var_38]
                call    sub_140346894
                test    al, al
                jnz     short loc_1403464A3

loc_14034649C:                          ; CODE XREF: HalQueryRealTimeClock+114↓j
                xor     al, al
                jmp     loc_14034652B
; ---------------------------------------------------------------------------

loc_1403464A3:                          ; CODE XREF: HalQueryRealTimeClock+9A↑j
                mov     rax, [rbp+var_40]
                xor     r8d, r8d
                test    esi, esi
                jz      short loc_140346516
                add     rbx, 8

loc_1403464B2:                          ; CODE XREF: HalQueryRealTimeClock+108↓j
                mov     rdx, [rbx]
                test    rdx, rdx
                js      short loc_1403464DB
                lea     rcx, [rdx+989680h]
                cmp     rax, rcx
                jl      short loc_1403464CE
                add     rax, 989680h
                jmp     short loc_1403464FA
; ---------------------------------------------------------------------------

loc_1403464CE:                          ; CODE XREF: HalQueryRealTimeClock+C4↑j
                cmp     rax, rdx
                jl      short loc_140346516
                add     rax, rax
                sub     rax, rdx
                jmp     short loc_1403464FA
; ---------------------------------------------------------------------------

loc_1403464DB:                          ; CODE XREF: HalQueryRealTimeClock+B8↑j
                mov     rcx, 7FFFFFFFFFFFFFFFh
                and     rdx, rcx
                lea     rcx, [rdx+989680h]
                cmp     rax, rcx
                jl      short loc_14034650C
                sub     rax, 989680h

loc_1403464FA:                          ; CODE XREF: HalQueryRealTimeClock+CC↑j
                                        ; HalQueryRealTimeClock+D9↑j
                inc     r8d
                mov     [rbp+var_40], rax
                add     rbx, 8
                cmp     r8d, esi
                jb      short loc_1403464B2
                jmp     short loc_140346516
; ---------------------------------------------------------------------------

loc_14034650C:                          ; CODE XREF: HalQueryRealTimeClock+F2↑j
                cmp     rax, rdx
                jl      short loc_140346516
                cmp     rax, rcx
                jl      short loc_14034649C

loc_140346516:                          ; CODE XREF: HalQueryRealTimeClock+AC↑j
                                        ; HalQueryRealTimeClock+D1↑j ...
                mov     [rbp+var_48], rax
                mov     al, 1
                jmp     short loc_14034652B
; ---------------------------------------------------------------------------

loc_14034651E:                          ; CODE XREF: HalQueryRealTimeClock+74↑j
                                        ; HalQueryRealTimeClock+7D↑j
                lea     rdx, [rbp+var_48]
                lea     rcx, [rbp+var_38]
                call    sub_140346894

loc_14034652B:                          ; CODE XREF: HalQueryRealTimeClock+9E↑j
                                        ; HalQueryRealTimeClock+11C↑j
                test    dil, dil
                jz      short loc_14034655D
                test    al, al
                jz      short loc_14034655D
                cmp     cs:dword_140CF4D0C, 0
                jnz     loc_1403466C9
                call    sub_1402B95B0
                mov     rcx, [rax+428h]
                mov     rax, [rcx+1B8h]
                add     [rbp+var_48], rax
                jmp     loc_1403466C9
; ---------------------------------------------------------------------------

loc_14034655D:                          ; CODE XREF: HalQueryRealTimeClock+12E↑j
                                        ; HalQueryRealTimeClock+132↑j
                mov     ebx, cs:dword_140C49E4C
                mov     rax, cr8
                mov     r13d, 2
                cmp     al, r13b
                jnb     short loc_1403465AB
                test    ebx, ebx
                jnz     short loc_1403465AB
                lea     rcx, [rbp+var_18]
                call    sub_14086575C
                test    eax, eax
                js      short loc_14034659C
                lea     rdx, [rbp+var_48]
                lea     rcx, [rbp+var_18]
                call    sub_140865694
                test    eax, eax
                js      short loc_1403465AB

loc_140346594:                          ; CODE XREF: HalQueryRealTimeClock+295↓j
                mov     dil, 1
                jmp     loc_1403466CE
; ---------------------------------------------------------------------------

loc_14034659C:                          ; CODE XREF: HalQueryRealTimeClock+181↑j
                cmp     eax, 0C0000002h
                jz      short loc_1403465AB
                lock or cs:dword_140C4BE50, r13d

loc_1403465AB:                          ; CODE XREF: HalQueryRealTimeClock+170↑j
                                        ; HalQueryRealTimeClock+174↑j ...
                cmp     cs:byte_140C49E48, 0
                jz      loc_1403466AB
                test    ebx, ebx
                jz      loc_1403466AB
                mov     eax, cs:dword_140C0F3B0
                test    al, 8
                jnz     loc_1403466AB
                mov     rax, cr8
                cmp     al, r13b
                jnb     loc_140346688
                mov     rbx, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140346623
                test    al, 1
                jz      short loc_140346623
                cmp     bl, 0Fh
                ja      short loc_140346623
                mov     rax, gs:20h
                mov     rdx, rsi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140346623:                          ; CODE XREF: HalQueryRealTimeClock+1EF↑j
                                        ; HalQueryRealTimeClock+1F3↑j ...
                lea     rcx, [rbp+var_48]
                call    sub_1404C3A98
                mov     edi, eax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14034667F
                test    al, 1
                jz      short loc_14034667F
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14034667F
                cmp     bl, 0Fh
                ja      short loc_14034667F
                cmp     al, r13b
                jb      short loc_14034667F
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rsi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, si
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14034667F
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14034667F:                          ; CODE XREF: HalQueryRealTimeClock+236↑j
                                        ; HalQueryRealTimeClock+23A↑j ...
                movzx   eax, bl
                mov     cr8, rax
                jmp     short loc_140346693
; ---------------------------------------------------------------------------

loc_140346688:                          ; CODE XREF: HalQueryRealTimeClock+1D5↑j
                lea     rcx, [rbp+var_48]
                call    sub_1404C3A98
                mov     edi, eax

loc_140346693:                          ; CODE XREF: HalQueryRealTimeClock+286↑j
                test    edi, edi
                jns     loc_140346594
                cmp     edi, 0C0000002h
                jz      short loc_1403466AB
                lock or cs:dword_140C4BE50, 4

loc_1403466AB:                          ; CODE XREF: HalQueryRealTimeClock+1B2↑j
                                        ; HalQueryRealTimeClock+1BA↑j ...
                lea     rdx, [rbp+var_50]
                lea     rcx, [rbp+var_48]
                call    sub_140383E5C
                cmp     [rbp+var_50], 0
                mov     dil, al
                jnz     short loc_1403466C9
                lock or cs:dword_140C4BE50, 8

loc_1403466C9:                          ; CODE XREF: HalQueryRealTimeClock+13B↑j
                                        ; HalQueryRealTimeClock+158↑j ...
                test    dil, dil
                jz      short loc_14034672F

loc_1403466CE:                          ; CODE XREF: HalQueryRealTimeClock+197↑j
                mov     rcx, 0FFFFF78000000014h
                mov     rax, 0C92A69C000h
                mov     rcx, [rcx]
                mov     rbx, [rbp+var_48]
                add     rax, rbx
                cmp     rcx, rax
                jle     short loc_140346701
                mov     [rbp+var_48], rcx
                lock or cs:dword_140C4BE50, 1
                mov     rbx, [rbp+var_48]

loc_140346701:                          ; CODE XREF: HalQueryRealTimeClock+2EF↑j
                cmp     cs:dword_140CF4D0C, 0
                jnz     short loc_140346721
                call    sub_1402B95B0
                mov     rcx, [rax+428h]
                sub     rbx, [rcx+1B8h]
                mov     [rbp+var_48], rbx

loc_140346721:                          ; CODE XREF: HalQueryRealTimeClock+308↑j
                mov     rdx, r14
                lea     rcx, [rbp+var_48]
                call    sub_140346AA8
                jmp     short loc_140346737
; ---------------------------------------------------------------------------

loc_14034672F:                          ; CODE XREF: HalQueryRealTimeClock+2CC↑j
                lock or cs:dword_140C4BE50, 10h

loc_140346737:                          ; CODE XREF: HalQueryRealTimeClock+32D↑j
                mov     al, dil
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140346400
HalQueryRealTimeClock endp
