KeWaitForMultipleObjects proc near      ; CODE XREF: sub_14020F78C+348↑p
                                        ; sub_1402BAD0C+E8↑p ...

var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C0          = byte ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_10          = qword ptr  20h
arg_20          = byte ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140457C7A SIZE 0000076E BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    r12
                push    r13
                push    r14
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0E8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+37h+var_38], rax
                mov     r10, [rbp+37h+arg_30]
                xor     eax, eax
                mov     r12, [rbp+37h+arg_38]
                mov     r14d, r9d
                mov     [rbp+37h+var_8C], r9d
                mov     r11, rdx
                mov     [rsp+100h+var_B8], rdx
                mov     [rbp+37h+var_A0], ecx
                mov     [rbp+37h+var_98], rax
                cmp     ecx, 1
                jz      loc_1402CADA1
; } // starts at 1402CA960

loc_1402CA9AB:                          ; DATA XREF: .rdata:0000000140069134↑o
                                        ; .rdata:0000000140069150↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+100h+var_20], rsi
                mov     rsi, gs:188h
                mov     [rbp+37h+var_50], rsi
                test    r12, r12
                jnz     loc_1402CAC95
                cmp     ecx, 3
                ja      loc_140457C7A
                lea     r12, [rsi+140h]

loc_1402CA9D9:                          ; CODE XREF: KeWaitForMultipleObjects+338↓j
                test    r8d, r8d
                jz      loc_1402CB145
; } // starts at 1402CA9AB

loc_1402CA9E2:                          ; DATA XREF: .rdata:0000000140069150↑o
                                        ; .rdata:0000000140069160↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+100h+arg_10], rbx
                mov     [rbp+37h+var_60], rax
                btr     dword ptr [rsi+74h], 2
                mov     [rsp+100h+var_28], rdi
                setb    cl
                mov     [rsp+100h+var_30], r15
                mov     [rbp+37h+var_48], rax
                mov     r15d, 2
                mov     [rsp+100h+var_C0], cl
                test    cl, cl
                jnz     short loc_1402CAA35
                mov     r11, cr8
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140457C85

loc_1402CAA2E:                          ; CODE XREF: KeWaitForMultipleObjects+18D327↓j
                                        ; KeWaitForMultipleObjects+18D331↓j ...
                mov     [rsi+186h], r11b

loc_1402CAA35:                          ; CODE XREF: KeWaitForMultipleObjects+B6↑j
                mov     ebx, 1
                mov     rax, 0FFFFF780000003B0h
                mov     rcx, 0FFFFF78000000008h
                test    r10, r10
                jz      loc_1402CAC88
                cmp     dword ptr [r10+4], 0
                jge     loc_1402CAEF0
                mov     rax, [rax]
                mov     rcx, [rcx]
                sub     rcx, rax
                mov     [rsp+100h+var_BC], r15d
                mov     rax, [rsi+0F8h]
                add     rax, [r10]
                sub     rcx, rax
                mov     [rbp+37h+var_98], rcx

loc_1402CAA81:                          ; CODE XREF: KeWaitForMultipleObjects+59B↓j
                                        ; KeWaitForMultipleObjects+6B3↓j
                xor     r14d, r14d

loc_1402CAA84:                          ; CODE XREF: KeWaitForMultipleObjects+330↓j
                movzx   edi, byte ptr [rsi+186h]
                movzx   r13d, [rbp+37h+arg_20]

loc_1402CAA90:                          ; CODE XREF: KeWaitForMultipleObjects+7A9↓j
                and     dword ptr [rsi+74h], 0FFFFFFEFh
                cmp     [rbp+37h+arg_28], 0
                mov     byte ptr [rsi+70h], 0
                mov     [rsi+187h], r13b
                jnz     loc_1402CAE2F

loc_1402CAAA9:                          ; CODE XREF: KeWaitForMultipleObjects+4D3↓j
                mov     rbx, gs:20h
                mov     [rbp+37h+var_90], r14d
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140457CCA

loc_1402CAAC6:                          ; CODE XREF: KeWaitForMultipleObjects+73E↓j
                                        ; KeWaitForMultipleObjects+18D36E↓j ...
                lock bts qword ptr [rsi+40h], 0
                jb      loc_1402CB072
                cmp     byte ptr [rsi+0C1h], 0
                jnz     loc_1402CB0A9

loc_1402CAAE0:                          ; CODE XREF: KeWaitForMultipleObjects+751↓j
                                        ; KeWaitForMultipleObjects+75B↓j
                cmp     [rbp+37h+arg_28], 0
                mov     r13d, [rbp+37h+var_A0]
                mov     r14d, [rbp+37h+var_8C]
                jnz     loc_1402CAE0C
                test    byte ptr [rsi+0C2h], 2
                jnz     loc_1402CB19B

loc_1402CAAFF:                          ; CODE XREF: KeWaitForMultipleObjects+4C4↓j
                                        ; KeWaitForMultipleObjects+83F↓j
                mov     byte ptr [rsi+184h], 5
                xor     r9d, r9d
                mov     [rsi+283h], r14b
                mov     eax, ds:0FFFFF78000000320h
                mov     [rsi+1B4h], eax
                mov     [rsi+40h], r9
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140457DB8

loc_1402CAB3C:                          ; CODE XREF: KeWaitForMultipleObjects+8EE↓j
                                        ; KeWaitForMultipleObjects+18D45C↓j ...
                mov     r10, gs:20h
                lea     rdi, [r12+11h]
                mov     r11, [rsp+100h+var_B8]
                mov     r8, r9
                mov     [rbp+37h+var_B0], r10
                mov     r14d, r9d
                mov     [rbp+37h+var_A8], r9

loc_1402CAB5D:                          ; CODE XREF: KeWaitForMultipleObjects+272↓j
                mov     r15d, r14d
                mov     [rbp+37h+var_88], r9d
                mov     rbx, [r11+r15*8]
                mov     byte ptr [rdi-1], 1
                mov     byte ptr [rdi], 4
                mov     [rdi+1], r14w
                mov     [rdi+7], rsi
                mov     [rdi+0Fh], rbx
                lock bts dword ptr [rbx], 7
                jb      loc_1402CB170

loc_1402CAB87:                          ; CODE XREF: KeWaitForMultipleObjects+836↓j
                movzx   eax, byte ptr [rbx]
                and     al, 7Fh
                cmp     al, 2
                jz      loc_1402CAF5E
                cmp     dword ptr [rbx+4], 0
                jg      loc_1402CACA3

loc_1402CAB9E:                          ; CODE XREF: KeWaitForMultipleObjects+6BC↓j
                                        ; KeWaitForMultipleObjects+6D3↓j
                mov     rdx, [rbx+10h]
                lea     rcx, [rbx+8]
                cmp     [rdx], rcx
                jnz     loc_1402CAD9A
                lea     rax, [rdi-11h]
                mov     [rdi-9], rdx
                mov     [rax], rcx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lock and dword ptr [rbx], 0FFFFFF7Fh
                inc     r14d
                add     rdi, 30h ; '0'
                cmp     r14d, r13d
                jb      short loc_1402CAB5D
                mov     r9, [rbp+37h+var_98]
                mov     ecx, [rsp+100h+var_BC]
                mov     rax, r9
                cmp     ecx, 2
                jz      loc_1402CADC0
                test    ecx, ecx
                jnz     loc_1402CAF00

loc_1402CABF0:                          ; CODE XREF: KeWaitForMultipleObjects+4A7↓j
                xor     edi, edi
                mov     [rsi+24Bh], r13b
                mov     ebx, edi
                mov     r15d, edi
                test    r8, r8
                jnz     loc_140457DFC

loc_1402CAC07:                          ; CODE XREF: KeWaitForMultipleObjects+18D52C↓j
                lea     rax, [rbp+37h+var_60]
                mov     r8d, ecx
                mov     rcx, rsi
                mov     [rsp+100h+var_E0], rax
                mov     rdx, r12
                call    sub_140240710
                mov     rcx, [rbp+37h+var_60]
                mov     r14, rax
                mov     r11, [rsp+100h+var_B8]
                test    rcx, rcx
                jnz     loc_140457E91

loc_1402CAC33:                          ; CODE XREF: KeWaitForMultipleObjects+18D5B9↓j
                test    r15, r15
                jnz     loc_140457F1E

loc_1402CAC3C:                          ; CODE XREF: KeWaitForMultipleObjects+18D636↓j
                cmp     r14d, 100h
                jz      loc_1402CAFEB
                mov     eax, r14d

loc_1402CAC4C:                          ; CODE XREF: KeWaitForMultipleObjects+532↓j
                                        ; KeWaitForMultipleObjects+70D↓j ...
                mov     rdi, [rsp+100h+var_28]
                mov     rbx, [rsp+100h+arg_10]
                mov     r15, [rsp+100h+var_30]
; } // starts at 1402CA9E2

loc_1402CAC64:                          ; CODE XREF: KeWaitForMultipleObjects+804↓j
                                        ; DATA XREF: .pdata:00000001400D1A30↑o ...
; __unwind { // __GSHandlerCheck
                mov     rsi, [rsp+100h+var_20]
; } // starts at 1402CAC64

loc_1402CAC6C:                          ; CODE XREF: KeWaitForMultipleObjects+45B↓j
                                        ; DATA XREF: .pdata:00000001400D1A3C↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rbp+37h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E8h
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8
; } // starts at 1402CAC6C

loc_1402CAC88:                          ; CODE XREF: KeWaitForMultipleObjects+F1↑j
                                        ; DATA XREF: .pdata:00000001400D1A48↑o ...
; __unwind { // __GSHandlerCheck
                xor     r14d, r14d
                mov     [rsp+100h+var_BC], r14d
                jmp     loc_1402CAA84
; } // starts at 1402CAC88
; ---------------------------------------------------------------------------

loc_1402CAC95:                          ; CODE XREF: KeWaitForMultipleObjects+63↑j
                                        ; DATA XREF: .pdata:00000001400D1A54↑o ...
; __unwind { // __GSHandlerCheck
                cmp     ecx, 40h ; '@'
                jbe     loc_1402CA9D9
                jmp     loc_140457C7A
; } // starts at 1402CAC95
; ---------------------------------------------------------------------------

loc_1402CACA3:                          ; CODE XREF: KeWaitForMultipleObjects+238↑j
                                        ; DATA XREF: .pdata:00000001400D1A60↑o ...
; __unwind { // __GSHandlerCheck
                mov     rdi, gs:20h
                mov     [rbp+37h+var_6C], r9d
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140458185

loc_1402CACC0:                          ; CODE XREF: KeWaitForMultipleObjects+7DA↓j
                                        ; KeWaitForMultipleObjects+18D829↓j ...
                lock bts qword ptr [rsi+40h], 0
                jb      loc_1402CB10E
                xor     r9d, r9d
                test    byte ptr [rsi+70h], 7
                jnz     short loc_1402CAD02
                mov     eax, r14d
                mov     [rsi+0C8h], rax
                mov     [rsi+3D0h], r9
                movzx   ecx, byte ptr [rbx]
                movzx   eax, cl
                and     al, 7
                cmp     al, 1
                jz      loc_1402CAEE7
                and     cl, 7Fh
                cmp     cl, 5
                jnz     short loc_1402CAD02
                dec     dword ptr [rbx+4]

loc_1402CAD02:                          ; CODE XREF: KeWaitForMultipleObjects+374↑j
                                        ; KeWaitForMultipleObjects+39D↑j ...
                mov     r13, [rbp+37h+var_B0]

loc_1402CAD06:                          ; CODE XREF: KeWaitForMultipleObjects+654↓j
                                        ; KeWaitForMultipleObjects+66F↓j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh

loc_1402CAD0D:                          ; CODE XREF: KeWaitForMultipleObjects+5E1↓j
                                        ; KeWaitForMultipleObjects+5F9↓j
                mov     byte ptr [rsi+184h], 2
                mov     [rsi+40h], r9
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404581EE

loc_1402CAD31:                          ; CODE XREF: KeWaitForMultipleObjects+18D892↓j
                                        ; KeWaitForMultipleObjects+18D8A1↓j ...
                mov     r15, [rsi+0C8h]
                mov     rcx, [rsi+3D0h]
                test    rcx, rcx
                jnz     loc_140458214

loc_1402CAD48:                          ; CODE XREF: KeWaitForMultipleObjects+18D8D2↓j
                test    r14d, r14d
                jz      loc_1402CAE5F
                movzx   eax, r14b
                lea     rbx, [rax+rax*2]
                shl     rbx, 4
                add     rbx, r12

loc_1402CAD60:                          ; CODE XREF: KeWaitForMultipleObjects+4F6↓j
                movzx   eax, byte ptr [r12+11h]
                cmp     al, 5
                jnb     loc_1402CAE4F
                mov     rdi, [r12+20h]
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     byte ptr [r12+11h], 4
                jnz     loc_1402CAE48
                mov     rcx, [r12]
                mov     rax, [r12+8]
                cmp     [rcx+8], r12
                jz      loc_1402CAE38

loc_1402CAD9A:                          ; CODE XREF: KeWaitForMultipleObjects+249↑j
                                        ; KeWaitForMultipleObjects+4DB↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 1402CACA3
; ---------------------------------------------------------------------------

loc_1402CADA1:                          ; CODE XREF: KeWaitForMultipleObjects+45↑j
                                        ; DATA XREF: .pdata:00000001400D1A6C↑o ...
; __unwind { // __GSHandlerCheck
                movzx   r9d, [rbp+37h+arg_28]
                mov     edx, r14d
                movzx   r8d, [rbp+37h+arg_20]
                mov     rcx, [r11]
                mov     [rsp+100h+var_E0], r10
                call    KeWaitForSingleObject
                jmp     loc_1402CAC6C
; } // starts at 1402CADA1
; ---------------------------------------------------------------------------

loc_1402CADC0:                          ; CODE XREF: KeWaitForMultipleObjects+282↑j
                                        ; DATA XREF: .pdata:00000001400D1A78↑o ...
; __unwind { // __GSHandlerCheck
                mov     rax, 0FFFFF780000003B0h
                mov     rcx, 0FFFFF78000000008h
                mov     rax, [rax]
                mov     rcx, [rcx]
                sub     rcx, [rsi+0F8h]
                mov     edx, [rsi+3B8h]
                sub     rcx, rax
                cmp     byte ptr [rsi+187h], 0
                mov     rax, r9
                jnz     loc_1402CAEB3

loc_1402CADFA:                          ; CODE XREF: KeWaitForMultipleObjects+55A↓j
                                        ; KeWaitForMultipleObjects+567↓j ...
                cmp     rcx, rax
                ja      loc_1402CAF09
                mov     ecx, [rsp+100h+var_BC]
                jmp     loc_1402CABF0
; ---------------------------------------------------------------------------

loc_1402CAE0C:                          ; CODE XREF: KeWaitForMultipleObjects+18C↑j
                movsx   rdx, [rbp+37h+arg_20]
                cmp     byte ptr [rdx+rsi+72h], 0
                jnz     loc_1402CB1CB
                test    dl, dl
                jnz     short loc_1402CAE97

loc_1402CAE20:                          ; CODE XREF: KeWaitForMultipleObjects+541↓j
                cmp     byte ptr [rsi+72h], 0
                jz      loc_1402CAAFF
                jmp     loc_140457FE2
; ---------------------------------------------------------------------------

loc_1402CAE2F:                          ; CODE XREF: KeWaitForMultipleObjects+143↑j
                or      dword ptr [rsi+74h], 10h
                jmp     loc_1402CAAA9
; ---------------------------------------------------------------------------

loc_1402CAE38:                          ; CODE XREF: KeWaitForMultipleObjects+434↑j
                cmp     [rax], r12
                jnz     loc_1402CAD9A
                mov     [rax], rcx
                mov     [rcx+8], rax

loc_1402CAE48:                          ; CODE XREF: KeWaitForMultipleObjects+421↑j
                lock and dword ptr [rdi], 0FFFFFF7Fh

loc_1402CAE4F:                          ; CODE XREF: KeWaitForMultipleObjects+408↑j
                add     r12, 30h ; '0'
                cmp     r12, rbx
                jnz     loc_1402CAD60
                xor     r9d, r9d

loc_1402CAE5F:                          ; CODE XREF: KeWaitForMultipleObjects+3EB↑j
                movzx   ebx, byte ptr [rsi+186h]
                movzx   eax, byte ptr [rsi+70h]
                test    al, 38h
                jnz     loc_1402CB038
                cmp     [rsp+100h+var_C0], 0
                jnz     loc_1404583D7
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140458372

loc_1402CAE8B:                          ; CODE XREF: KeWaitForMultipleObjects+18DA14↓j
                                        ; KeWaitForMultipleObjects+18DA20↓j ...
                mov     cr8, rbx

loc_1402CAE8F:                          ; CODE XREF: KeWaitForMultipleObjects+18D9CB↓j
                                        ; KeWaitForMultipleObjects+18DA83↓j
                mov     eax, r15d
                jmp     loc_1402CAC4C
; ---------------------------------------------------------------------------

loc_1402CAE97:                          ; CODE XREF: KeWaitForMultipleObjects+4BE↑j
                lea     rax, [rsi+0A8h]
                cmp     [rax], rax
                jz      loc_1402CAE20
                or      byte ptr [rsi+0C2h], 2
                jmp     loc_1402CB1A5
; ---------------------------------------------------------------------------

loc_1402CAEB3:                          ; CODE XREF: KeWaitForMultipleObjects+494↑j
                cmp     dword ptr [rsi+1E4h], 0
                jnz     loc_1402CADFA
                cmp     byte ptr [rsi+186h], 0
                jnz     loc_1402CADFA
                cmp     byte ptr [rsi+0C0h], 0
                jnz     loc_1402CADFA
                test    edx, edx
                jz      loc_1402CADFA
                jmp     loc_140457DE1
; ---------------------------------------------------------------------------

loc_1402CAEE7:                          ; CODE XREF: KeWaitForMultipleObjects+391↑j
                mov     [rbx+4], r9d
                jmp     loc_1402CAD02
; ---------------------------------------------------------------------------

loc_1402CAEF0:                          ; CODE XREF: KeWaitForMultipleObjects+FC↑j
                mov     rax, [r10]
                mov     [rbp+37h+var_98], rax
                mov     [rsp+100h+var_BC], ebx
                jmp     loc_1402CAA81
; ---------------------------------------------------------------------------

loc_1402CAF00:                          ; CODE XREF: KeWaitForMultipleObjects+28A↑j
                test    r9, r9
                jnz     loc_140457DEA

loc_1402CAF09:                          ; CODE XREF: KeWaitForMultipleObjects+49D↑j
                mov     rbx, gs:20h
                mov     [rbp+37h+var_70], 0
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140458116

loc_1402CAF29:                          ; CODE XREF: KeWaitForMultipleObjects+8A3↓j
                                        ; KeWaitForMultipleObjects+18D7BA↓j ...
                lock bts qword ptr [rsi+40h], 0
                jb      loc_1402CB1D7
                mov     r13, [rbp+37h+var_B0]
                xor     r9d, r9d
                test    byte ptr [rsi+70h], 7
                jnz     loc_1402CAD0D
                mov     qword ptr [rsi+0C8h], 102h
                mov     [rsi+3D0h], r9
                jmp     loc_1402CAD0D
; ---------------------------------------------------------------------------

loc_1402CAF5E:                          ; CODE XREF: KeWaitForMultipleObjects+22E↑j
                test    byte ptr [rbx+30h], 2
                jnz     loc_140457DD4

loc_1402CAF68:                          ; CODE XREF: KeWaitForMultipleObjects+18D47C↓j
                cmp     dword ptr [rbx+4], 0
                jle     loc_1402CB018

loc_1402CAF72:                          ; CODE XREF: KeWaitForMultipleObjects+6CD↓j
                cmp     dword ptr [rbx+4], 80000000h
                jz      loc_140458059
                mov     rdi, gs:20h
                mov     [rbp+37h+var_78], r9d
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140457FF0

loc_1402CAF9C:                          ; CODE XREF: KeWaitForMultipleObjects+8DA↓j
                                        ; KeWaitForMultipleObjects+18D694↓j ...
                lock bts qword ptr [rsi+40h], 0
                jb      loc_1402CB20E
                mov     r13, [rbp+37h+var_B0]
                xor     r9d, r9d
                test    byte ptr [rsi+70h], 7
                jnz     loc_1402CAD06
                mov     eax, r14d
                mov     [rsi+0C8h], rax
                mov     [rsi+3D0h], r9
                sub     dword ptr [rbx+4], 1
                jnz     loc_1402CAD06
                mov     r8, r13
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140325068
                xor     r9d, r9d
                jmp     loc_1402CAD06
; ---------------------------------------------------------------------------

loc_1402CAFEB:                          ; CODE XREF: KeWaitForMultipleObjects+2E3↑j
                mov     [rsp+100h+var_C0], 0
                mov     r10, cr8
                mov     r15d, 2
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140457F9B

loc_1402CB00C:                          ; CODE XREF: KeWaitForMultipleObjects+18D63D↓j
                                        ; KeWaitForMultipleObjects+18D647↓j ...
                mov     [rsi+186h], r10b
                jmp     loc_1402CAA81
; ---------------------------------------------------------------------------

loc_1402CB018:                          ; CODE XREF: KeWaitForMultipleObjects+60C↑j
                cmp     rsi, [rbx+28h]
                jnz     loc_1402CAB9E
                movzx   eax, byte ptr [r10+312Ah]
                cmp     [rbx+2], al
                jz      loc_1402CAF72
                jmp     loc_1402CAB9E
; ---------------------------------------------------------------------------

loc_1402CB038:                          ; CODE XREF: KeWaitForMultipleObjects+50C↑j
                test    al, 18h
                jnz     loc_140458237
                mov     dl, 1
                mov     rcx, r13
                call    sub_1402D1604
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140458330

loc_1402CB064:                          ; CODE XREF: KeWaitForMultipleObjects+18D9D2↓j
                                        ; KeWaitForMultipleObjects+18D9E0↓j ...
                xor     eax, eax
                mov     cr8, rax
                mov     eax, r15d
                jmp     loc_1402CAC4C
; ---------------------------------------------------------------------------

loc_1402CB072:                          ; CODE XREF: KeWaitForMultipleObjects+16D↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140457CF1

loc_1402CB082:                          ; CODE XREF: KeWaitForMultipleObjects+732↓j
                                        ; KeWaitForMultipleObjects+18D395↓j ...
                lea     rcx, [rbp+37h+var_90]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_1402CB082
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      loc_1402CAAC6
                jmp     loc_140457D18
; ---------------------------------------------------------------------------

loc_1402CB0A9:                          ; CODE XREF: KeWaitForMultipleObjects+17A↑j
                cmp     word ptr [rsi+1E6h], 0
                jnz     loc_1402CAAE0
                cmp     dil, 1
                jnb     loc_1402CAAE0
                mov     rcx, rsi
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140457D33

loc_1402CB0D7:                          ; CODE XREF: KeWaitForMultipleObjects+18D3D5↓j
                                        ; KeWaitForMultipleObjects+18D3E3↓j ...
                mov     ebx, 1
                mov     cr8, rbx
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     rcx, cr8
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140457D75

loc_1402CB102:                          ; CODE XREF: KeWaitForMultipleObjects+18D417↓j
                                        ; KeWaitForMultipleObjects+18D420↓j ...
                mov     [rsi+186h], dil
                jmp     loc_1402CAA90
; ---------------------------------------------------------------------------

loc_1402CB10E:                          ; CODE XREF: KeWaitForMultipleObjects+367↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_1404581AC

loc_1402CB11E:                          ; CODE XREF: KeWaitForMultipleObjects+7CE↓j
                                        ; KeWaitForMultipleObjects+18D850↓j ...
                lea     rcx, [rbp+37h+var_6C]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_1402CB11E
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_1402CACC0
                jmp     loc_1404581D3
; } // starts at 1402CADC0
; ---------------------------------------------------------------------------

loc_1402CB145:                          ; CODE XREF: KeWaitForMultipleObjects+7C↑j
                                        ; DATA XREF: .pdata:00000001400D1A84↑o ...
; __unwind { // __GSHandlerCheck
                movzx   eax, [rbp+37h+arg_28]
                mov     r8d, r14d
                movzx   r9d, [rbp+37h+arg_20]
                mov     [rsp+100h+var_D0], r12
                mov     [rsp+100h+var_D8], r10
                mov     byte ptr [rsp+100h+var_E0], al
                call    sub_1403246C4
                jmp     loc_1402CAC64
; ---------------------------------------------------------------------------
                align 10h
; } // starts at 1402CB145

loc_1402CB170:                          ; CODE XREF: KeWaitForMultipleObjects+221↑j
                                        ; KeWaitForMultipleObjects+81D↓j ...
; __unwind { // __GSHandlerCheck
                lea     rcx, [rbp+37h+var_88]
                call    sub_1402C8C70
                mov     eax, [rbx]
                test    al, al
                js      short loc_1402CB170
                lock bts dword ptr [rbx], 7
                jb      short loc_1402CB170
                mov     r11, [rsp+100h+var_B8]
                xor     r9d, r9d
                mov     r8, [rbp+37h+var_A8]
                mov     r10, [rbp+37h+var_B0]
                jmp     loc_1402CAB87
; ---------------------------------------------------------------------------

loc_1402CB19B:                          ; CODE XREF: KeWaitForMultipleObjects+199↑j
                cmp     [rbp+37h+arg_20], 0
                jz      loc_1402CAAFF

loc_1402CB1A5:                          ; CODE XREF: KeWaitForMultipleObjects+54E↑j
                mov     ebx, 0C0h

loc_1402CB1AA:                          ; CODE XREF: KeWaitForMultipleObjects+875↓j
                                        ; KeWaitForMultipleObjects+18D68B↓j
                mov     rcx, rsi
                call    sub_1403261B0
                mov     rcx, gs:20h
                movzx   edx, dil
                call    sub_1402D1604
                mov     eax, ebx
                jmp     loc_1402CAC4C
; ---------------------------------------------------------------------------

loc_1402CB1CB:                          ; CODE XREF: KeWaitForMultipleObjects+4B6↑j
                mov     byte ptr [rdx+rsi+72h], 0
                mov     ebx, 101h
                jmp     short loc_1402CB1AA
; ---------------------------------------------------------------------------

loc_1402CB1D7:                          ; CODE XREF: KeWaitForMultipleObjects+5D0↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14045813D

loc_1402CB1E7:                          ; CODE XREF: KeWaitForMultipleObjects+897↓j
                                        ; KeWaitForMultipleObjects+18D7E1↓j ...
                lea     rcx, [rbp+37h+var_70]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_1402CB1E7
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      loc_1402CAF29
                jmp     loc_140458164
; ---------------------------------------------------------------------------

loc_1402CB20E:                          ; CODE XREF: KeWaitForMultipleObjects+643↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140458017

loc_1402CB21E:                          ; CODE XREF: KeWaitForMultipleObjects+8CE↓j
                                        ; KeWaitForMultipleObjects+18D6BB↓j ...
                lea     rcx, [rbp+37h+var_78]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_1402CB21E
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_1402CAF9C
                jmp     loc_14045803E
; ---------------------------------------------------------------------------

loc_1402CB245:                          ; CODE XREF: KeWaitForMultipleObjects+18D462↓j
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     loc_1402CAB3C
                jmp     loc_140457DC7
; } // starts at 1402CB170
KeWaitForMultipleObjects endp
