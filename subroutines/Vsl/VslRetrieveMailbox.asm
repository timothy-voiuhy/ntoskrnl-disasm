VslRetrieveMailbox proc near            ; DATA XREF: .pdata:00000001400F207C↑o

var_F0          = dword ptr -0F0h
var_E0          = qword ptr -0E0h
var_A8          = qword ptr -0A8h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_50          = qword ptr -50h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-57h]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_20], rax
                mov     rdi, [rbp+4Fh+arg_20]
                mov     rbx, rdx
                xor     edx, edx
                movzx   r14d, r8b
                mov     r15, rcx
                mov     rsi, r9
                lea     rcx, [rbp+4Fh+var_90]
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+110h+var_E0]
                lea     r8d, [rdx+48h]
                call    memset
                cmp     qword ptr [rbx], 0
                jnz     short loc_1404FD75A
                cmp     qword ptr [rbx+8], 0
                jz      short loc_1404FD768

loc_1404FD75A:                          ; CODE XREF: VslRetrieveMailbox+61↑j
                mov     rax, [rdi]
                dec     rax
                cmp     rax, 1F9FFFh
                jbe     short loc_1404FD76F

loc_1404FD768:                          ; CODE XREF: VslRetrieveMailbox+68↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1404FD7EB
; ---------------------------------------------------------------------------

loc_1404FD76F:                          ; CODE XREF: VslRetrieveMailbox+76↑j
                mov     r8d, [rdi]
                lea     rcx, [rsp+110h+var_E0]
                and     [rsp+110h+var_F0], 0
                mov     r9d, 2
                mov     rdx, rsi
                call    sub_1403940A8
                test    eax, eax
                js      short loc_1404FD7EB
                mov     rax, [rsp+110h+var_E0]
                lea     r9, [rbp+4Fh+var_90]
                movups  xmm0, xmmword ptr [rbx]
                mov     [rbp+4Fh+var_88], rax
                mov     edx, 14h
                mov     rax, [rbp+4Fh+var_A8]
                xor     r8d, r8d
                mov     cl, 2
                mov     [rbp+4Fh+var_80], rax
                movdqu  [rbp+4Fh+var_78], xmm0
                mov     [rbp+4Fh+var_68], r15
                mov     [rbp+4Fh+var_60], r14d
                call    sub_14034DB1C
                lea     rcx, [rsp+110h+var_E0]
                mov     ebx, eax
                call    sub_140394054
                mov     eax, 80000000h
                lea     ecx, [rbx+rax]
                test    eax, ecx
                jnz     short loc_1404FD7E2
                cmp     ebx, 0C0000023h
                jnz     short loc_1404FD7E9

loc_1404FD7E2:                          ; CODE XREF: VslRetrieveMailbox+E8↑j
                mov     rcx, [rbp+4Fh+var_50]
                mov     [rdi], rcx

loc_1404FD7E9:                          ; CODE XREF: VslRetrieveMailbox+F0↑j
                mov     eax, ebx

loc_1404FD7EB:                          ; CODE XREF: VslRetrieveMailbox+7D↑j
                                        ; VslRetrieveMailbox+9C↑j
                mov     rcx, [rbp+4Fh+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+110h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FD6F0
VslRetrieveMailbox endp
