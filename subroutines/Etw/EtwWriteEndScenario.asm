EtwWriteEndScenario proc near           ; CODE XREF: sub_1403C3628+99↑p
                                        ; sub_140773768+76↑p ...

var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_38], rax
                mov     r14, [rsp+78h+arg_20]
                xorps   xmm0, xmm0
                mov     ebp, r9d
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                movups  [rsp+78h+var_48], xmm0
                test    rdx, rdx
                jz      short loc_140787201
                test    r8, r8
                jz      short loc_140787201
                call    EtwEventEnabled
                test    al, al
                jz      short loc_140787208
                lea     r8, [rsp+78h+var_48]
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14039FC98
                test    eax, eax
                js      short loc_1407871E8
                mov     r9d, 0Bh
                lea     rcx, [rsp+78h+var_48]
                mov     r8, rdi
                mov     rdx, rsi
                call    sub_1407882FC
                mov     r9d, ebp
                mov     [rsp+78h+var_58], r14
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rbx
                call    EtwWrite

loc_1407871E8:                          ; CODE XREF: EtwWriteEndScenario+5A↑j
                                        ; EtwWriteEndScenario+A6↓j ...
                mov     rcx, [rsp+78h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140787201:                          ; CODE XREF: EtwWriteEndScenario+39↑j
                                        ; EtwWriteEndScenario+3E↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407871E8
; ---------------------------------------------------------------------------

loc_140787208:                          ; CODE XREF: EtwWriteEndScenario+47↑j
                mov     eax, 0C0000008h
                jmp     short loc_1407871E8
; } // starts at 140787160
EtwWriteEndScenario endp
