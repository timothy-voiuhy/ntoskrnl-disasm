EtwTelemetryCoverageReport proc near    ; CODE XREF: sub_1405A6C94+CA↓p
                                        ; sub_1407C8B4C+3B8↓p ...

var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = qword ptr -0C8h
var_C0          = byte ptr -0C0h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = byte ptr -40h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001404889D8 SIZE 000003D1 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                xor     r13d, r13d
                xor     r12d, r12d
                and     [rsp+120h+var_F0], r13d
                mov     rsi, rcx
                mov     [rsp+120h+var_E4], r13d
                xor     r14d, r14d
                mov     [rsp+120h+var_EC], r12d
                call    KeGetEffectiveIrql
                cmp     al, 2
                jnb     short loc_14035B06A
                mov     eax, [rsi+10h]
                test    al, 1
                jnz     short loc_14035B06A
                lea     edi, [r13+1]

loc_14035B000:                          ; CODE XREF: EtwTelemetryCoverageReport+CC↓j
                cmp     cs:qword_140C545C8, r12
                jz      loc_1404889D8

loc_14035B00D:                          ; CODE XREF: EtwTelemetryCoverageReport+12DA55↓j
                cmp     dword ptr [rsi+0Ch], 0FFFFFF00h
                mov     r15, cs:qword_140C545C8
                lea     rbx, [r15+18h]
                jnb     short loc_14035B06E
                test    edi, edi
                jz      loc_1404889FA
                mov     rcx, cs:qword_140C545C0
                mov     rdx, rsi
                call    sub_140716174
                xor     ebx, ebx

loc_14035B03A:                          ; CODE XREF: EtwTelemetryCoverageReport+D3↓j
                                        ; EtwTelemetryCoverageReport+12DA41↓j ...
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+120h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14035B06A:                          ; CODE XREF: EtwTelemetryCoverageReport+53↑j
                                        ; EtwTelemetryCoverageReport+5A↑j
                xor     edi, edi
                jmp     short loc_14035B000
; ---------------------------------------------------------------------------

loc_14035B06E:                          ; CODE XREF: EtwTelemetryCoverageReport+7F↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_14035B03A
; } // starts at 14035AFA0
EtwTelemetryCoverageReport endp
