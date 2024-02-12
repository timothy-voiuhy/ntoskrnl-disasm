ntoskrnl_28     proc near               ; DATA XREF: .pdata:00000001401243E0↑o
                                        ; ntoskrnl_25+29↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     rdi, r9
                mov     esi, r8d
                mov     rbp, rdx
                mov     r14d, ecx
                mov     ebx, 0C0000002h
                call    sub_1402B95B0
                mov     rcx, [rax+388h]
                mov     rax, cs:qword_140D2D4E8
                test    rax, rax
                jz      short loc_14094EB07
                mov     r9d, esi
                mov     [rsp+38h+var_18], rdi
                mov     r8, rbp
                mov     edx, r14d
                call    sub_1404079D0
                mov     ebx, eax

loc_14094EB07:                          ; CODE XREF: ntoskrnl_28+40↑j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_28     endp

byte_14094EB25  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401243E0↑o

; =============== S U B R O U T I N E =======================================


sub_14094EB2C   proc near               ; CODE XREF: sub_1405B3370+2C↑p
                                        ; sub_14094ECD0+379↓p ...

arg_20          = dword ptr  28h

                xor     eax, eax
                lea     r10d, [rax+4]
                mov     [r9], r10d
                cmp     r8d, r10d
                jnb     short loc_14094EB41
                mov     eax, 0C0000023h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14094EB41:                          ; CODE XREF: sub_14094EB2C+C↑j
                test    rcx, rcx
                jz      short loc_14094EB49
                mov     [rcx], r10d

loc_14094EB49:                          ; CODE XREF: sub_14094EB2C+18↑j
                test    rdx, rdx
                jz      short locret_14094EB54
                mov     ecx, [rsp+arg_20]
                mov     [rdx], ecx

locret_14094EB54:                       ; CODE XREF: sub_14094EB2C+20↑j
                retn
sub_14094EB2C   endp

; ---------------------------------------------------------------------------
                align 2
algn_14094EB56:                         ; DATA XREF: .pdata:00000001401243EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14094EB60   proc near               ; DATA XREF: .pdata:00000001401243F8↑o
                                        ; PAGE:0000000140984BE0↓o

var_68          = dword ptr -68h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_20], rax
                mov     rdi, [rsp+88h+arg_28]
                xorps   xmm0, xmm0
                mov     rbx, [rsp+88h+arg_20]
                mov     esi, r9d
                mov     [r11-58h], rdi
                mov     rbp, r8
                mov     [r11-60h], rbx
                mov     r14, rdx
                mov     [rsp+88h+var_68], r9d
                xor     eax, eax
                mov     r9, r8
                mov     [rsp+88h+var_28], eax
                mov     r8, rdx
                lea     rdx, asc_140985858 ; "\"$"
                movups  [rsp+88h+var_48], xmm0
                movups  [rsp+88h+var_38], xmm0
                call    sub_1407CFEA4
                mov     edx, 80000000h
                lea     ecx, [rax+rdx]
                test    edx, ecx
                jnz     short loc_14094EC36
                cmp     eax, 0C0000023h
                jz      short loc_14094EC36
                xor     r9d, r9d
                mov     dword ptr [rbx], 20h ; ' '
                lea     rdx, [rsp+88h+var_48]
                mov     ecx, 0BEh
                lea     r8d, [r9+24h]
                call    ZwQuerySystemInformation
                test    eax, eax
                js      short loc_14094EC33
                test    byte ptr [rsp+88h+var_48], 4
                jz      short loc_14094EC2E
                cmp     esi, 20h ; ' '
                jb      short loc_14094EC27
                mov     dword ptr [r14], 3
                lea     rdx, [rsp+88h+var_48+4]
                mov     r8d, [rbx]
                mov     rcx, rbp
                call    memmove
                xor     eax, eax
                jmp     short loc_14094EC33
; ---------------------------------------------------------------------------

loc_14094EC27:                          ; CODE XREF: sub_14094EB60+AA↑j
                mov     eax, 0C0000023h
                jmp     short loc_14094EC33
; ---------------------------------------------------------------------------

loc_14094EC2E:                          ; CODE XREF: sub_14094EB60+A5↑j
                mov     eax, 0C0000034h

loc_14094EC33:                          ; CODE XREF: sub_14094EB60+9E↑j
                                        ; sub_14094EB60+C5↑j ...
                mov     byte ptr [rdi], 1

loc_14094EC36:                          ; CODE XREF: sub_14094EB60+77↑j
                                        ; sub_14094EB60+7E↑j
                mov     rcx, [rsp+88h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14094EB60
sub_14094EB60   endp

algn_14094EC59:                         ; DATA XREF: .pdata:00000001401243F8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14094EC60   proc near               ; DATA XREF: .pdata:0000000140124404↑o
                                        ; PAGE:0000000140984BB8↓o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_28]
                mov     byte ptr [rax], 1
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], rax
                mov     [rsp+38h+var_18], r9d
                mov     r9, r8
                mov     r8, rdx
                lea     rdx, qword_140985370
                call    sub_1403B7FEC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094EC60   endp

algn_14094EC93:                         ; DATA XREF: .pdata:0000000140124404↑o
                align 20h
; Exported entry  24.

; =============== S U B R O U T I N E =======================================


