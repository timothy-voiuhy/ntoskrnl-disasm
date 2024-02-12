NtQuerySecurityAttributesToken proc near
                                        ; DATA XREF: .rdata:000000014004601C↑o
                                        ; .pdata:00000001400FC114↑o ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_47          = byte ptr -47h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407F4F94 SIZE 00000054 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+20h], rsi
                mov     [r11+18h], r8d
                mov     [r11+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r13, r9
                mov     ebx, r8d
                mov     rdi, rdx
                xor     eax, eax
                mov     [r11-38h], rax
                xor     r12b, r12b
                mov     [r11-40h], rax
                mov     [r11-30h], rax
                mov     [rsp+88h+var_48], al
                mov     rax, gs:188h
                movzx   esi, byte ptr [rax+232h]
                mov     [rsp+88h+var_47], sil
                mov     r15d, [rsp+88h+arg_20]
                test    r15d, r15d
                jz      loc_1405E9269

loc_1405E90A4:                          ; CODE XREF: NtQuerySecurityAttributesToken+23B↓j
                test    r13, r13
                jz      loc_1407F4F94

loc_1405E90AD:                          ; CODE XREF: NtQuerySecurityAttributesToken+235↓j
                test    sil, sil
                jz      loc_1407F4FA7

loc_1405E90B6:                          ; DATA XREF: .rdata:0000000140045FF8↑o
;   __try { // __except at loc_1405E9122
                mov     rdx, r15
                mov     r8d, 4
                mov     rcx, r13
                call    ProbeForWrite
                mov     r14, [rsp+88h+arg_28]
                mov     rdx, r14
                test    r14b, 3
                jnz     short loc_1405E911C
                lea     rax, [r14+3]
                cmp     r14, rax
                ja      short loc_1405E9116
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                jnb     short loc_1405E9116
                and     rax, 0FFFFFFFFFFFFF000h
                add     rax, 1000h

loc_1405E90FC:                          ; CODE XREF: NtQuerySecurityAttributesToken+D2↓j
                movzx   ecx, byte ptr [rdx]
                mov     [rdx], cl
                and     rdx, 0FFFFFFFFFFFFF000h
                add     rdx, 1000h
                cmp     rdx, rax
                jnz     short loc_1405E90FC
                jmp     short loc_1405E9127
; ---------------------------------------------------------------------------

loc_1405E9116:                          ; CODE XREF: NtQuerySecurityAttributesToken+9F↑j
                                        ; NtQuerySecurityAttributesToken+AE↑j
                call    ExRaiseAccessViolation
; ---------------------------------------------------------------------------
                align 4

loc_1405E911C:                          ; CODE XREF: NtQuerySecurityAttributesToken+96↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1405E90B6

loc_1405E9122:                          ; DATA XREF: .rdata:0000000140045FF8↑o
;   __except(1) // owned by 1405E90B6
                jmp     loc_1405E924E
; ---------------------------------------------------------------------------

loc_1405E9127:                          ; CODE XREF: NtQuerySecurityAttributesToken+D4↑j
                                        ; NtQuerySecurityAttributesToken+20BF6F↓j
                lea     r9, [rsp+88h+var_38]
                movzx   r8d, sil
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_1405E9390
                mov     edi, eax
                mov     [rsp+88h+var_44], eax
                test    eax, eax
                js      loc_1407F4F9D
                lea     rax, [rsp+88h+var_30]
                mov     [rsp+88h+var_60], rax
                lea     rax, [rsp+88h+var_48]
                mov     [rsp+88h+var_68], rax
                lea     r9, [rsp+88h+var_40]
                movzx   r8d, sil
                mov     edx, 8
                mov     rcx, [rsp+88h+arg_0]
                call    sub_1402164D0
                mov     edi, eax
                mov     [rsp+88h+var_44], eax
                test    eax, eax
                js      loc_1407F4F9D
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                mov     rbx, [rsp+88h+var_40]
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceSharedLite
                mov     r12b, 1
                mov     byte ptr [rsp+88h+arg_20], r12b
                test    sil, sil
                jz      loc_1407F4FB4

loc_1405E91B9:                          ; DATA XREF: .rdata:0000000140046008↑o
;   __try { // __except at loc_1405E91EA
                mov     [rsp+88h+var_50], r14
                mov     [rsp+88h+var_58], r15d
                mov     [rsp+88h+var_60], r13
                mov     byte ptr [rsp+88h+var_68], 0
                mov     r9d, [rsp+88h+arg_10]
                mov     r8, [rsp+88h+var_38]
                mov     rcx, rbx
                call    sub_140205A00
                mov     edi, eax
                mov     [rsp+88h+var_44], eax
                jmp     short loc_1405E9203
;   } // starts at 1405E91B9
; ---------------------------------------------------------------------------

loc_1405E91EA:                          ; DATA XREF: .rdata:0000000140046008↑o
;   __except(1) // owned by 1405E91B9
                mov     edi, eax
                mov     [rsp+88h+var_44], eax
                movzx   esi, [rsp+88h+var_47]
                movzx   r12d, byte ptr [rsp+88h+arg_20]
                mov     rbx, [rsp+88h+var_40]

loc_1405E9203:                          ; CODE XREF: NtQuerySecurityAttributesToken+1A8↑j
                                        ; NtQuerySecurityAttributesToken+20BF62↓j ...
                cmp     sil, 1
                jnz     short loc_1405E921A
                mov     rcx, [rsp+88h+var_38]
                test    rcx, rcx
                jz      short loc_1405E921A
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405E921A:                          ; CODE XREF: NtQuerySecurityAttributesToken+1C7↑j
                                        ; NtQuerySecurityAttributesToken+1D1↑j
                test    r12b, r12b
                jz      short loc_1405E923F
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     edi, [rsp+88h+var_44]
                mov     rbx, [rsp+88h+var_40]

loc_1405E923F:                          ; CODE XREF: NtQuerySecurityAttributesToken+1DD↑j
                test    rbx, rbx
                jz      short loc_1405E924C
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_1405E924C:                          ; CODE XREF: NtQuerySecurityAttributesToken+202↑j
                mov     eax, edi

loc_1405E924E:                          ; CODE XREF: NtQuerySecurityAttributesToken:loc_1405E9122↑j
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E9269:                          ; CODE XREF: NtQuerySecurityAttributesToken+5E↑j
                test    r13, r13
                jnz     loc_1407F4F94
                test    r15d, r15d
                jz      loc_1405E90AD
                jmp     loc_1405E90A4
; } // starts at 1405E9040
NtQuerySecurityAttributesToken endp
