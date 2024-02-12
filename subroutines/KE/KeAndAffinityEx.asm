KeAndAffinityEx proc near               ; CODE XREF: sub_140259F00+13E↑p
                                        ; KeQueryLogicalProcessorRelationship+317↓p ...

var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+0E8h+var_C8]
                call    memset
                movzx   eax, word ptr [rsi]
                lea     r9, [rsp+0E8h+var_C8]
                movzx   edx, word ptr [rdi]
                test    rbx, rbx
                cmovnz  r9, rbx
                xor     r11d, r11d
                cmp     ax, dx
                mov     r10d, r11d
                movzx   ecx, r11w
                cmovb   dx, ax
                mov     [r9], dx
                cmp     r11w, dx
                jnb     short loc_14025AAB7

loc_14025AA8C:                          ; CODE XREF: KeAndAffinityEx+95↓j
                movzx   eax, cx
                lea     r8, ds:0[rax*8]
                mov     rdx, [r8+rsi+8]
                and     rdx, [r8+rdi+8]
                mov     [r8+r9+8], rdx
                jz      short loc_14025AAAE
                mov     r10d, 1

loc_14025AAAE:                          ; CODE XREF: KeAndAffinityEx+86↑j
                inc     cx
                cmp     cx, [r9]
                jb      short loc_14025AA8C

loc_14025AAB7:                          ; CODE XREF: KeAndAffinityEx+6A↑j
                lea     rax, [rsp+0E8h+var_C8]
                cmp     r9, rax
                jz      short loc_14025AAF2
                mov     eax, 14h
                mov     [r9+4], r11d
                mov     [r9+2], ax
                cmp     cx, ax
                jnb     short loc_14025AAF2
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_14025AAE0:                          ; CODE XREF: KeAndAffinityEx+D0↓j
                movzx   edx, cx
                inc     cx
                mov     [r9+rdx*8+8], r11
                cmp     cx, [r9+2]
                jb      short loc_14025AAE0

loc_14025AAF2:                          ; CODE XREF: KeAndAffinityEx+9F↑j
                                        ; KeAndAffinityEx+B2↑j
                mov     eax, r10d
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14025AA20
KeAndAffinityEx endp
