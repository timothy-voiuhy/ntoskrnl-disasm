RtlAddAccessFilterAce proc near         ; DATA XREF: .pdata:0000000140121F14↑o

var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = word ptr -0Ch
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_20          = byte ptr  50h
arg_28          = dword ptr  58h
arg_30          = qword ptr  60h
arg_38          = word ptr  68h

; __unwind { // __GSHandlerCheck
                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     r12, [rbp+arg_30]
                xor     r14d, r14d
                mov     [rbp+var_20], r8d
                mov     rbx, r9
                mov     [rbp+var_18], r14
                mov     r15d, r8d
                mov     [rbp+var_10], r14d
                mov     esi, edx
                mov     [rbp+var_C], 100h
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_140913BFD
                call    RtlValidAcl
                test    al, al
                jz      loc_140913BFD
                test    r12, r12
                jz      short loc_140913AE0
                movzx   eax, [rbp+arg_38]
                mov     ecx, 0FFF8h
                sub     ax, 6
                cmp     ax, cx
                ja      short loc_140913AE0
                cmp     dword ptr [r12], 78747261h
                jnz     short loc_140913AE0
                cmp     [rbp+arg_20], 15h
                jnz     short loc_140913AE0
                mov     rcx, rbx
                call    RtlValidSid
                test    al, al
                jnz     short loc_140913ACE
                mov     eax, 0C0000078h
                jmp     loc_140913C02
; ---------------------------------------------------------------------------

loc_140913ACE:                          ; CODE XREF: RtlAddAccessFilterAce+92↑j
                test    r15b, 40h
                jz      short loc_140913AEA
                mov     rcx, rbx
                call    sub_140219FF0
                test    al, al
                jnz     short loc_140913B0C

loc_140913AE0:                          ; CODE XREF: RtlAddAccessFilterAce+64↑j
                                        ; RtlAddAccessFilterAce+76↑j ...
                mov     eax, 0C000000Dh
                jmp     loc_140913C02
; ---------------------------------------------------------------------------

loc_140913AEA:                          ; CODE XREF: RtlAddAccessFilterAce+A2↑j
                mov     ecx, [rbx+2]
                sub     ecx, [rbp+var_10]
                jnz     short loc_140913AFC
                movzx   ecx, word ptr [rbx+6]
                movzx   eax, [rbp+var_C]
                sub     ecx, eax

loc_140913AFC:                          ; CODE XREF: RtlAddAccessFilterAce+C0↑j
                test    ecx, ecx
                jnz     short loc_140913AE0
                cmp     byte ptr [rbx+1], 1
                jnz     short loc_140913AE0
                cmp     [rbx+8], r14d
                jnz     short loc_140913AE0

loc_140913B0C:                          ; CODE XREF: RtlAddAccessFilterAce+AE↑j
                movzx   eax, byte ptr [rdi]
                cmp     al, 4
                ja      loc_140913BF6
                cmp     esi, 4
                ja      loc_140913BF6
                cmp     eax, esi
                mov     r14d, eax
                movzx   eax, sil
                cmovbe  r14d, eax
                test    r15d, 0FFFFFFA0h
                jnz     short loc_140913AE0
                mov     r15d, [rbp+arg_28]
                test    r15d, 0FF000000h
                jnz     short loc_140913AE0
                lea     rdx, [rbp+var_18]
                mov     rcx, rdi
                call    RtlFirstFreeAce
                test    al, al
                jz      loc_140913BFD
                movzx   ecx, [rbp+arg_38]
                movzx   r8d, byte ptr [rbx+1]
                add     ecx, 3
                and     ecx, 0FFFFFFFCh
                add     r8d, 4
                lea     r8d, [rcx+r8*4]
                cmp     r8d, ecx
                jb      short loc_140913BEF
                cmp     r8d, 0FFFFh
                ja      loc_140913AE0
                mov     rsi, [rbp+var_18]
                test    rsi, rsi
                jz      short loc_140913BE8
                movzx   ecx, word ptr [rdi+2]
                mov     eax, r8d
                add     rcx, rdi
                add     rax, rsi
                cmp     rax, rcx
                ja      short loc_140913BE8
                mov     eax, [rbp+var_20]
                lea     rdx, [rsi+8]
                mov     [rsi+2], r8w
                mov     r8, rbx
                mov     [rsi+1], al
                mov     byte ptr [rsi], 15h
                mov     [rsi+4], r15d
                movzx   ecx, byte ptr [rbx+1]
                lea     ecx, ds:8[rcx*4]
                call    RtlCopySid
                movzx   eax, byte ptr [rbx+1]
                mov     rdx, r12
                movzx   r8d, [rbp+arg_38]
                add     rax, 4
                lea     rcx, [rsi+rax*4]
                call    memmove
                inc     word ptr [rdi+4]
                xor     eax, eax
                mov     [rdi], r14b
                jmp     short loc_140913C02
; ---------------------------------------------------------------------------

loc_140913BE8:                          ; CODE XREF: RtlAddAccessFilterAce+157↑j
                                        ; RtlAddAccessFilterAce+169↑j
                mov     eax, 0C0000099h
                jmp     short loc_140913C02
; ---------------------------------------------------------------------------

loc_140913BEF:                          ; CODE XREF: RtlAddAccessFilterAce+141↑j
                mov     eax, 0C0000095h
                jmp     short loc_140913C02
; ---------------------------------------------------------------------------

loc_140913BF6:                          ; CODE XREF: RtlAddAccessFilterAce+E1↑j
                                        ; RtlAddAccessFilterAce+EA↑j
                mov     eax, 0C0000059h
                jmp     short loc_140913C02
; ---------------------------------------------------------------------------

loc_140913BFD:                          ; CODE XREF: RtlAddAccessFilterAce+4E↑j
                                        ; RtlAddAccessFilterAce+5B↑j ...
                mov     eax, 0C0000077h

loc_140913C02:                          ; CODE XREF: RtlAddAccessFilterAce+99↑j
                                        ; RtlAddAccessFilterAce+B5↑j ...
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+40h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140913A30
RtlAddAccessFilterAce endp
