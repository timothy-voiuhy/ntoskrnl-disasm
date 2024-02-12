HalGetEnvironmentVariableEx proc near   ; CODE XREF: sub_1403BAB08+9F↑p
                                        ; sub_140502618+F0↓p ...

var_70          = qword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 00000001404ACB6C SIZE 000000D5 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                lea     rbp, [rsp+30h]
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+60h+var_38], rax
                cmp     cs:byte_140C49E48, 0
                xorps   xmm0, xmm0
                mov     r12, [rbp+60h+arg_20]
                xorps   xmm1, xmm1
                mov     r15, r8
                mov     rsi, r9
                movups  [rbp+60h+var_58], xmm0
                mov     r14, rdx
                mov     r8, rcx
                movups  [rbp+60h+var_48], xmm1
                jnz     short loc_1403BAC3D
                mov     eax, 0C0000002h

loc_1403BAC21:                          ; CODE XREF: HalGetEnvironmentVariableEx+F206C↓j
                mov     rcx, [rbp+60h+var_38]
                xor     rcx, rbp
                call    __security_check_cookie
                lea     rsp, [rbp+30h]
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403BAC3D:                          ; CODE XREF: HalGetEnvironmentVariableEx+4A↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1404ACB6C
; } // starts at 1403BABD0
HalGetEnvironmentVariableEx endp
