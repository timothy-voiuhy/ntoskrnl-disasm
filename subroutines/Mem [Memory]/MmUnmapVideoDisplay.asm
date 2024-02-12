MmUnmapVideoDisplay proc near           ; CODE XREF: sub_1402E68EC+107↑p
                                        ; sub_1402E6AA0:loc_1402E6BA0↑p ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_100         = dword ptr -100h
var_F0          = qword ptr -0F0h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046056C SIZE 00000144 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx ; MmUnmapIoSpace
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_48], rax
                mov     rax, rcx
                mov     [rsp+138h+var_110], rdx
                and     eax, 0FFFh
                mov     [rsp+138h+var_118], rcx
                lea     rbx, [rdx+0FFFh]
                mov     r15, rdx
                add     rbx, rax
                mov     rbp, rcx
                mov     eax, cs:dword_140CFB17C
                shr     rbx, 0Ch
                test    al, 1
                jnz     loc_14046056C

loc_1402E871D:                          ; CODE XREF: MmUnmapVideoDisplay+177EBA↓j
                mov     rcx, rbp
                call    sub_140260000
                mov     rcx, rbp
                mov     edi, eax
                call    sub_140260090
                mov     r14d, eax
                cmp     edi, 1
                jnz     short loc_1402E8742
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402E87D0

loc_1402E8742:                          ; CODE XREF: MmUnmapVideoDisplay+75↑j
                mov     rsi, rbp
                mov     r12, 0FFFFF68000000000h
                shr     rsi, 9
                mov     r13, 7FFFFFFFF8h
                and     rsi, r13
                mov     rax, r12
                add     rsi, rax
                test    r14d, r14d
                jnz     short loc_1402E87A9
                mov     r8d, ebx
                lea     rcx, qword_140C4EDC0
                mov     rdx, rsi
                call    sub_14025EFB0

loc_1402E877D:                          ; CODE XREF: MmUnmapVideoDisplay+107↓j
                                        ; MmUnmapVideoDisplay+177FDA↓j
                mov     rcx, [rsp+138h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+138h+arg_10]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402E87A9:                          ; CODE XREF: MmUnmapVideoDisplay+A9↑j
                test    r15, 1FFFFFh
                jz      loc_14046057F

loc_1402E87B6:                          ; CODE XREF: MmUnmapVideoDisplay+177FEB↓j
                mov     r8d, 9
                mov     rdx, r15
                mov     rcx, rbp
                call    sub_1403952C4
                jmp     short loc_1402E877D
; } // starts at 1402E86C0
MmUnmapVideoDisplay endp
