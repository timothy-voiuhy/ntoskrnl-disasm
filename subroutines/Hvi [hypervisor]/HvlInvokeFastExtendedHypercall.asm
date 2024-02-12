HvlInvokeFastExtendedHypercall proc near
                                        ; CODE XREF: sub_14038FFC4+AF↑p
                                        ; sub_140390210+4D↑p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_20          = dword ptr  58h

; FUNCTION CHUNK AT 000000014049D582 SIZE 00000077 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 68h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     eax, dword ptr cs:xmmword_140CFC490+4
                xorps   xmm0, xmm0
                mov     r15, r9
                mov     edi, r8d
                mov     r14, rdx
                mov     rbx, rcx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                test    al, 10h
                jnz     loc_14049D582
                xor     sil, sil

loc_1403902C6:                          ; CODE XREF: HvlInvokeFastExtendedHypercall+10D314↓j
                mov     eax, [rbp+arg_20]
                lea     r8d, [rdi+0Fh]
                shr     r8d, 4
                mov     rdx, r14
                mov     rcx, rbx
                test    eax, eax
                jnz     loc_14049D599
                mov     r8d, edi
                call    sub_140408D70

loc_1403902E7:                          ; CODE XREF: HvlInvokeFastExtendedHypercall+10D329↓j
                mov     rdi, rax
                test    sil, sil
                jnz     loc_14049D5AE

loc_1403902F3:                          ; CODE XREF: HvlInvokeFastExtendedHypercall+10D374↓j
                mov     rax, rdi
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 68h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140390280
HvlInvokeFastExtendedHypercall endp
