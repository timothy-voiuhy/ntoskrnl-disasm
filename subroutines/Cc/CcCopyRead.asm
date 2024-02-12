CcCopyRead      proc near               ; DATA XREF: .pdata:00000001401072D4↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                and     [rsp+48h+var_18], 0
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    CcCopyReadEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcCopyRead      endp

algn_1407208B9:                         ; DATA XREF: .pdata:00000001401072D4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=80h

sub_1407208C0   proc near               ; CODE XREF: sub_14071E9F4+13D↑p
                                        ; DATA XREF: .rdata:00000001400893FC↑o ...

var_160         = dword ptr -160h
var_158         = byte ptr -158h
var_150         = dword ptr -150h
var_14C         = dword ptr -14Ch
var_148         = qword ptr -148h
var_140         = xmmword ptr -140h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 000000014082F172 SIZE 00000323 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-50h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+80h+var_40], rax
                mov     rsi, [rbp+80h+arg_38]
                xor     edi, edi
                mov     r15, [rbp+80h+arg_28]
                mov     ebx, r8d
                mov     [rsp+180h+var_128], rdx
                mov     r14d, edi
                mov     r12d, edi
                test    r8d, r8d
                jz      loc_14082F396
                cmp     ebx, 1
                jz      loc_14082F30F
                cmp     ebx, 2
                jz      loc_14082F23F
                cmp     ebx, 3
                jnz     loc_14082F172
                mov     eax, [rbp+80h+arg_30]
                cmp     eax, 8
                jb      short loc_1407209A2
                lea     r12, [rsi+4]
                add     eax, 0FFFFFFF8h
                lea     rcx, [rsi+8]

loc_140720942:                          ; CODE XREF: sub_1407208C0+EA↓j
                mov     r8, rsi
                mov     [rsp+180h+var_150], eax
                lea     rdx, [rsp+180h+var_150]
                call    sub_140690B14
                mov     edi, eax
                mov     eax, [rsp+180h+var_150]
                lea     r14d, [rax+8]
                test    edi, edi
                js      short loc_140720968
                mov     [r12], eax

loc_140720965:                          ; CODE XREF: sub_1407208C0+10E8F1↓j
                                        ; sub_1407208C0+10EA40↓j
                mov     [r15], r14d

loc_140720968:                          ; CODE XREF: sub_1407208C0+9F↑j
                                        ; sub_1407208C0+10E8EB↓j ...
                mov     r8, [rsp+180h+var_128]
                mov     r9d, edi
                mov     [rsp+180h+var_160], r14d
                call    sub_1407209B4
                mov     rcx, [rbp+80h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+180h+arg_10]
                add     rsp, 150h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407209A2:                          ; CODE XREF: sub_1407208C0+75↑j
                mov     rcx, rdi
                mov     rsi, rdi
                mov     eax, edi
                jmp     short loc_140720942
; } // starts at 1407208C0
sub_1407208C0   endp

; ---------------------------------------------------------------------------
byte_1407209AC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400893FC↑o
                                        ; .pdata:00000001401072E0↑o

; =============== S U B R O U T I N E =======================================


sub_1407209B4   proc near               ; CODE XREF: sub_1407208C0+B5↑p
                                        ; sub_14071E9F4+10FCF8↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014082F496 SIZE 00000061 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, r9d
                mov     rsi, r8
                mov     r9, [r8+0B8h]
                movzx   ecx, byte ptr [r9+1]
                mov     rdx, [r9+20h]
                test    ecx, ecx
                jnz     loc_14082F496
                mov     r8d, [rsp+28h+arg_20]
                mov     r10d, [rdx+30h]
                add     r8d, r10d
                mov     r11d, [rdx+34h]
                test    ebx, ebx
                js      loc_140720A7E
                cmp     r8d, [r9+18h]
                mov     edi, 0C0000023h
                cmovbe  edi, ebx
                mov     ebx, edi
                test    edi, edi
                js      short loc_140720A7E
                mov     rax, ds:0FFFFF78000000014h
                lea     r9, [rdx+3Ch]
                mov     [rdx+10h], rax
                mov     [rdx], r8d
                mov     edx, r11d
                test    r11d, r11d
                jz      short loc_140720A57

loc_140720A28:                          ; CODE XREF: sub_1407209B4+80↓j
                sub     edx, 1
                mov     eax, [r9+rdx*4]
                mov     [r9+rdx*8+4], eax
                jnz     short loc_140720A28
                test    r11d, r11d
                jz      short loc_140720A57
                mov     rcx, r11

loc_140720A3E:                          ; CODE XREF: sub_1407209B4+A1↓j
                mov     [r9], r10d
                add     r10d, 7
                add     r10d, [r9+4]
                lea     r9, [r9+8]
                and     r10d, 0FFFFFFF8h
                sub     rcx, 1
                jnz     short loc_140720A3E

loc_140720A57:                          ; CODE XREF: sub_1407209B4+72↑j
                                        ; sub_1407209B4+85↑j ...
                mov     eax, r8d
                xor     edx, edx
                mov     rcx, rsi
                mov     [rsi+38h], rax
                mov     [rsi+30h], ebx
                call    IofCompleteRequest
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140720A7E:                          ; CODE XREF: sub_1407209B4+3F↑j
                                        ; sub_1407209B4+55↑j ...
                cmp     ebx, 0C0000023h
                jnz     short loc_140720A9F
                mov     eax, 38h ; '8'
                mov     [rdx+30h], r8d
                mov     [rdx], eax
                mov     r8d, eax
                mov     dword ptr [rdx+2Ch], 20h ; ' '
                xor     ebx, ebx
                jmp     short loc_140720A57
; ---------------------------------------------------------------------------

loc_140720A9F:                          ; CODE XREF: sub_1407209B4+D0↑j
                                        ; sub_1407209B4+10EAEA↓j
                xor     r8d, r8d
                jmp     short loc_140720A57
sub_1407209B4   endp

; ---------------------------------------------------------------------------
byte_140720AA4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140089420↑o
                                        ; .pdata:00000001401072EC↑o

; =============== S U B R O U T I N E =======================================


sub_140720AAC   proc near               ; CODE XREF: sub_1406756F4+E1↑p
                                        ; sub_1406757EC+65↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082F4F8 SIZE 00000021 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   esi, word ptr [rdx]
                lea     rbx, [rcx+8]
                add     esi, 2
                xor     r12d, r12d
                mov     eax, 0FFFFh
                mov     r15, rdx
                mov     r14, rcx
                cmp     esi, eax
                ja      loc_14082F4F8

loc_140720AE9:                          ; CODE XREF: sub_140720AAC+10EA57↓j
                cmp     [rbx], r12
                jnz     loc_14082F508

loc_140720AF2:                          ; CODE XREF: sub_140720AAC+10EA68↓j
                mov     edx, esi
                mov     ecx, 1
                mov     r8d, 54515750h
                call    ExAllocatePoolWithTag
                mov     rbp, rax
                test    rax, rax
                jz      short loc_140720B20
                mov     rcx, [rbx]
                test    rcx, rcx
                jnz     short loc_140720B5E

loc_140720B14:                          ; CODE XREF: sub_140720AAC+B9↓j
                mov     [rbx], rbp
                mov     [r14], r12w
                mov     [r14+2], si

loc_140720B20:                          ; CODE XREF: sub_140720AAC+5E↑j
                                        ; sub_140720AAC+10EA4F↓j ...
                mov     rdx, r15
                mov     rcx, r14
                call    sub_14021D7F0
                test    eax, eax
                js      short loc_140720B3E
                movzx   edx, word ptr [r14]
                mov     rcx, [rbx]
                shr     rdx, 1
                mov     [rcx+rdx*2], r12w

loc_140720B3E:                          ; CODE XREF: sub_140720AAC+81↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140720B5E:                          ; CODE XREF: sub_140720AAC+66↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_140720B14
sub_140720AAC   endp

; ---------------------------------------------------------------------------
algn_140720B67:                         ; DATA XREF: .rdata:0000000140089450↑o
                                        ; .pdata:00000001401072F8↑o
                align 10h
; Exported entry  67. CcMdlWriteComplete

; =============== S U B R O U T I N E =======================================


