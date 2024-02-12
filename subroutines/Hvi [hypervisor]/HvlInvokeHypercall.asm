HvlInvokeHypercall proc near            ; CODE XREF: sub_1403900C0+1F↑p
                                        ; HvlUpdatePerformanceStateCountersForLp+1F↑p ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049D6E2 SIZE 0000006F BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                sub     rsp, 78h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_30], rax
                mov     eax, dword ptr cs:xmmword_140CFC490+4
                xorps   xmm0, xmm0
; } // starts at 140390440

loc_14039045F:                          ; DATA XREF: .rdata:0000000140099D80↑o
                                        ; .rdata:0000000140099D94↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+88h+var_18], rbp
                mov     rbp, rdx
                mov     [rsp+88h+var_20], rdi
                mov     rbx, rcx
                mov     [rsp+88h+var_28], r14
                mov     r14, r8
                movups  [rsp+88h+var_50], xmm0
                movups  [rsp+88h+var_40], xmm0
                test    al, 10h
                jnz     loc_14049D6E2
                xor     dil, dil

loc_14039048C:                          ; CODE XREF: HvlInvokeHypercall+10D2B5↓j
                mov     rax, cs:off_140E01858
                mov     r8, r14
                mov     rdx, rbp
                mov     rcx, rbx
                mov     rsi, rbx
                call    rax ; sub_140365DB0
                nop     dword ptr [rax]
                mov     r14, [rsp+88h+var_28]
                test    dil, dil
                mov     rdi, [rsp+88h+var_20]
                mov     rbx, rax
                mov     rbp, [rsp+88h+var_18]
                jnz     loc_14049D6FA
; } // starts at 14039045F

loc_1403904BF:                          ; CODE XREF: HvlInvokeHypercall+10D30C↓j
                                        ; DATA XREF: .pdata:00000001400DC440↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rsp+88h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 78h
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403904BF
HvlInvokeHypercall endp
