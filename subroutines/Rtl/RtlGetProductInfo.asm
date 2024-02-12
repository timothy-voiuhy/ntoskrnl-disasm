RtlGetProductInfo proc near             ; CODE XREF: sub_1407BD610+35↓p
                                        ; sub_140A3E42C+249↓p
                                        ; DATA XREF: ...

var_130         = qword ptr -130h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = xmmword ptr -118h
var_108         = dword ptr -108h
var_104         = dword ptr -104h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D0          = dword ptr -0D0h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014048BB8A SIZE 000000A8 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                lea     rbp, [rax-58h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+50h+var_10], rax
                mov     rdi, [rbp+50h+arg_20]
                xor     esi, esi
                and     [rsp+150h+var_11C], 0
                mov     ebx, 1
                and     [rsp+150h+var_120], 0
                and     dword ptr [rsp+150h+var_118], 0
                mov     dword ptr [rsp+150h+var_118+8], ecx
                mov     dword ptr [rsp+150h+var_118+0Ch], edx
                mov     [rsp+150h+var_108], r8d
                mov     [rsp+150h+var_104], r9d
                test    rdi, rdi
                jz      loc_140361A6B
                movups  xmm0, cs:xmmword_140011E10
                and     [rdi], esi
                mov     [rsp+150h+var_100], ecx
                lea     rcx, [rsp+150h+var_100]
                mov     [rsp+150h+var_FC], edx
                lea     rdx, [rsp+150h+var_F8+8]
                movdqu  [rsp+150h+var_F8+8], xmm0
                mov     dword ptr [rsp+150h+var_F8], r8d
                mov     dword ptr [rsp+150h+var_F8+4], r9d
                call    sub_140361A80
                test    eax, eax
                js      loc_140361A6B
                lea     rax, [rsp+150h+var_120]
                lea     r9d, [rbx+3]
                mov     [rsp+150h+var_130], rax
                lea     r8, [rsp+150h+var_118]
                lea     rdx, [rsp+150h+var_11C]
                lea     rcx, asc_140005040 ; "$&"
                call    ZwQueryLicenseValue
                test    eax, eax
                js      short loc_140361A6F
                cmp     [rsp+150h+var_11C], 4
                jnz     short loc_140361A6F
                cmp     [rsp+150h+var_120], 4
                jnz     short loc_140361A6F
                lea     rax, [rsp+150h+var_120]
                mov     r9d, 0C8h
                lea     r8, [rsp+150h+var_E8+8]
                mov     [rsp+150h+var_130], rax
                lea     rdx, [rsp+150h+var_11C]
                lea     rcx, asc_140005030 ; ">@"
                call    ZwQueryLicenseValue
                test    eax, eax
                jns     loc_14048BB8A

loc_140361A3D:                          ; CODE XREF: RtlGetProductInfo+12A29D↓j
                                        ; RtlGetProductInfo+12A2E5↓j
                mov     eax, dword ptr [rsp+150h+var_118]
                mov     [rdi], eax

loc_140361A43:                          ; CODE XREF: RtlGetProductInfo+12D↓j
                                        ; RtlGetProductInfo+135↓j ...
                mov     al, bl
                mov     rcx, [rbp+50h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+150h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140361A6B:                          ; CODE XREF: RtlGetProductInfo+5B↑j
                                        ; RtlGetProductInfo+93↑j ...
                xor     bl, bl
                jmp     short loc_140361A43
; ---------------------------------------------------------------------------

loc_140361A6F:                          ; CODE XREF: RtlGetProductInfo+BF↑j
                                        ; RtlGetProductInfo+C6↑j ...
                mov     dword ptr [rdi], 0ABCDABCDh
                jmp     short loc_140361A43
; } // starts at 140361940
RtlGetProductInfo endp
