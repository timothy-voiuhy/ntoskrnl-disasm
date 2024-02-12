PoFxEnableDStateReporting proc near     ; DATA XREF: .pdata:000000014011F8BC↑o

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = byte ptr -0B0h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jnz     short loc_1408E594A

loc_1408E5940:                          ; CODE XREF: PoFxEnableDStateReporting+3D↓j
                mov     ebx, 0C000000Dh
                jmp     loc_1408E59D7
; ---------------------------------------------------------------------------

loc_1408E594A:                          ; CODE XREF: PoFxEnableDStateReporting+2E↑j
                test    rdi, rdi
                jz      short loc_1408E5940
                xor     edx, edx
                lea     rcx, [rbp+57h+var_B0]
                lea     r8d, [rdx+50h]
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+0F0h+var_C0], rdi
                and     [rsp+0F0h+var_C8], 0
                lea     r8, [rbp+57h+var_60]
                and     [rsp+0F0h+var_D0], 0
                lea     rdx, [rbp+57h+var_B0]
                xor     eax, eax
                mov     r9d, 1
                mov     [rbp+57h+var_30], rax
                mov     rcx, rbx
                mov     [rbp+57h+var_18], rax
                lea     rax, [rbp+57h+var_28]
                movups  [rbp+57h+var_50], xmm0
                mov     dword ptr [rbp+57h+var_50+0Ch], 1
                movups  [rbp+57h+var_40], xmm0
                mov     qword ptr [rbp+57h+var_40], rax
                movups  [rbp+57h+var_60], xmm0
                movups  [rbp+57h+var_28], xmm0
                call    sub_1407B45EC
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408E59D7
                mov     rdx, [rdi]
                mov     r8d, [rdx+338h]
                mov     rdx, [rdi]
                or      r8d, 1
                mov     [rdx+338h], r8d
                mov     rcx, [rdi]
                call    PoFxStartDevicePowerManagement

loc_1408E59D7:                          ; CODE XREF: PoFxEnableDStateReporting+35↑j
                                        ; PoFxEnableDStateReporting+A5↑j
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F0h+var_s0]
                mov     rbx, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408E5910
PoFxEnableDStateReporting endp
