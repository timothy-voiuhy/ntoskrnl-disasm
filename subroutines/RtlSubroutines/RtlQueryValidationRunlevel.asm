RtlQueryValidationRunlevel proc near    ; DATA XREF: .pdata:00000001400F80E8↑o

var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = dword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                xor     ebx, ebx
                xor     eax, eax
                mov     [rbp+var_28], rbx
                xorps   xmm0, xmm0
                mov     [rbp+var_30], ebx
                mov     rsi, rcx
                mov     [rbp+var_10], eax
                movups  [rbp+var_20], xmm0
                mov     eax, ds:0FFFFF78000000258h
                mov     edi, eax
                test    rcx, rcx
                jz      short loc_14058E869
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14058E869
                lea     r8, qword_1400096B8
                lea     edx, [rbx+1]
                lea     rcx, [rbp+var_28]
                call    ZwOpenKey
                test    eax, eax
                js      short loc_14058E869
                mov     rcx, [rbp+var_28]
                lea     rax, [rbp+var_30]
                mov     [rsp+60h+var_38], rax
                lea     r9, [rbp+var_20]
                lea     r8d, [rbx+2]
                mov     [rsp+60h+var_40], 14h
                mov     rdx, rsi
                call    ZwQueryValueKey
                test    eax, eax
                js      short loc_14058E860
                cmp     dword ptr [rbp+var_20+4], 4
                jnz     short loc_14058E860
                cmp     dword ptr [rbp+var_20+8], 4
                cmovz   ebx, dword ptr [rbp+var_20+0Ch]

loc_14058E860:                          ; CODE XREF: RtlQueryValidationRunlevel+90↑j
                                        ; RtlQueryValidationRunlevel+96↑j
                mov     rcx, [rbp+var_28]
                call    NtClose

loc_14058E869:                          ; CODE XREF: RtlQueryValidationRunlevel+4B↑j
                                        ; RtlQueryValidationRunlevel+50↑j ...
                or      edi, ebx
                mov     eax, edi
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14058E7C0
RtlQueryValidationRunlevel endp
