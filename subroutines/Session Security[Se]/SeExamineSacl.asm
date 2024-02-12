SeExamineSacl   proc near               ; CODE XREF: sub_140625BF8+1DA895↑p
                                        ; SeOpenObjectAuditAlarmWithTransaction+1D1960↑p ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = byte ptr -70h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                or      dword ptr [rax+8], 0FFFFFFFFh
                xor     ebp, ebp
                mov     r15, [rsp+0B8h+arg_28]
                xor     r13d, r13d
                mov     [rax-50h], rbp
                mov     r10, r8
                mov     rax, [rsp+0B8h+arg_30]
                mov     r8, rdx
                mov     rbx, rcx
                mov     [r15], bpl
                mov     [rax], bpl
                test    rcx, rcx
                jz      loc_140922E57
                movzx   edi, word ptr [rcx+4]
                mov     [rsp+0B8h+var_54], edi
                test    edi, edi
                jz      loc_140922E57
                mov     r12b, [rsp+0B8h+arg_20]
                xor     sil, sil
                bt      r9d, 19h
                jnb     short loc_140922B66
                mov     al, r12b
                neg     al
                sbb     sil, sil
                and     sil, 0C0h
                add     sil, 80h

loc_140922B66:                          ; CODE XREF: SeExamineSacl+74↑j
                mov     rax, [r10+98h]
                mov     rdx, cs:qword_140D2E6D0
                mov     rcx, [rax]
                movzx   eax, word ptr [rdx]
                cmp     [rcx], ax
                jnz     short loc_140922BB8
                movzx   r8d, byte ptr [rdx+1]
                lea     r8, ds:8[r8*4]
                call    memcmp
                mov     r10, [rsp+0B8h+arg_10]
                mov     r8, [rsp+0B8h+arg_8]
                test    eax, eax
                jnz     short loc_140922BB8
                mov     rax, cs:qword_140C54330
                movzx   ecx, byte ptr [rax+1]
                lea     r13d, ds:8[rcx*4]

loc_140922BB8:                          ; CODE XREF: SeExamineSacl+9D↑j
                                        ; SeExamineSacl+C3↑j
                xor     edx, edx
                add     rbx, 8
                mov     dword ptr [rsp+0B8h+arg_28], edx
                test    edi, edi
                jz      loc_140922E57

loc_140922BCD:                          ; CODE XREF: SeExamineSacl+35A↓j
                cmp     byte ptr [r15], 0
                jnz     loc_140922E40
                mov     dil, [rbx+1]
                test    dil, 8
                jnz     loc_140922E16
                mov     al, [rbx]
                cmp     al, 2
                jnz     loc_140922C91
                mov     byte ptr [rsp+0B8h+var_88], 0
                lea     r14, [rbx+8]
                mov     r8, r14
                mov     byte ptr [rsp+0B8h+var_90], 0
                mov     r9b, 1
                mov     byte ptr [rsp+0B8h+var_98], 0
                xor     edx, edx
                mov     rcx, r10
                call    sub_14021C4F0
                test    al, al
                jnz     short loc_140922C46
                test    r13d, r13d
                jz      loc_140922E0F
                mov     rcx, cs:qword_140C54330
                movzx   eax, word ptr [r14]
                cmp     [rcx], ax
                jnz     loc_140922E0F
                mov     r8d, r13d
                mov     rdx, r14
                call    memcmp
                test    eax, eax
                jnz     loc_140922E0F

loc_140922C46:                          ; CODE XREF: SeExamineSacl+134↑j
                mov     eax, [rbx+4]
                test    [rsp+0B8h+arg_18], eax
                jz      short loc_140922C78

loc_140922C52:                          ; CODE XREF: SeExamineSacl+320↓j
                test    dil, 40h
                jz      short loc_140922C61
                test    r12b, r12b
                jnz     loc_140922E0B

loc_140922C61:                          ; CODE XREF: SeExamineSacl+176↑j
                test    dil, dil
                jns     loc_140922E0F
                test    r12b, r12b
                jnz     loc_140922E0F
                jmp     loc_140922E0B
; ---------------------------------------------------------------------------

loc_140922C78:                          ; CODE XREF: SeExamineSacl+170↑j
                mov     edx, dword ptr [rsp+0B8h+arg_28]
                test    dil, sil
                jz      loc_140922E16
                mov     byte ptr [r15], 1
                jmp     loc_140922E16
; ---------------------------------------------------------------------------

loc_140922C91:                          ; CODE XREF: SeExamineSacl+109↑j
                cmp     al, 0Dh
                jnz     loc_140922E16
                lea     r14, [rbx+8]
                movzx   eax, byte ptr [r14+1]
                lea     r11d, ds:8[rax*4]
                mov     eax, [rbx+4]
                mov     dword ptr [rsp+0B8h+arg_30], r11d
                mov     [rsp+0B8h+var_58], eax
                test    r8, r8
                jz      short loc_140922CE4
                test    rbp, rbp
                jnz     short loc_140922CE4
                lea     rdx, [rsp+0B8h+var_50]
                mov     rcx, r8
                call    sub_140345678
                mov     r11d, dword ptr [rsp+0B8h+arg_30]
                mov     edx, dword ptr [rsp+0B8h+arg_28]
                mov     rbp, [rsp+0B8h+var_50]

loc_140922CE4:                          ; CODE XREF: SeExamineSacl+1DC↑j
                                        ; SeExamineSacl+1E1↑j
                movzx   ecx, word ptr [rbx+2]
                sub     ecx, r11d
                lea     eax, [rcx-8]
                test    eax, eax
                jle     loc_140922E16
                mov     rax, [rsp+0B8h+arg_10]
                mov     rax, [rax+448h]
                test    rax, rax
                jz      short loc_140922D13
                mov     r10, [rax+258h]
                jmp     short loc_140922D16
; ---------------------------------------------------------------------------

loc_140922D13:                          ; CODE XREF: SeExamineSacl+228↑j
                xor     r10d, r10d

loc_140922D16:                          ; CODE XREF: SeExamineSacl+231↑j
                test    rax, rax
                jz      short loc_140922D24
                mov     r8, [rax+248h]
                jmp     short loc_140922D27
; ---------------------------------------------------------------------------

loc_140922D24:                          ; CODE XREF: SeExamineSacl+239↑j
                xor     r8d, r8d

loc_140922D27:                          ; CODE XREF: SeExamineSacl+242↑j
                test    rax, rax
                jz      short loc_140922D35
                mov     rdx, [rax+250h]
                jmp     short loc_140922D37
; ---------------------------------------------------------------------------

loc_140922D35:                          ; CODE XREF: SeExamineSacl+24A↑j
                xor     edx, edx

loc_140922D37:                          ; CODE XREF: SeExamineSacl+253↑j
                test    rax, rax
                jz      short loc_140922D45
                mov     r9, [rax+240h]
                jmp     short loc_140922D48
; ---------------------------------------------------------------------------

loc_140922D45:                          ; CODE XREF: SeExamineSacl+25A↑j
                xor     r9d, r9d

loc_140922D48:                          ; CODE XREF: SeExamineSacl+263↑j
                lea     eax, [rcx-8]
                mov     ecx, r11d
                add     rcx, r14
                lea     r11, [rsp+0B8h+arg_0]
                mov     [rsp+0B8h+var_60], r11
                mov     [rsp+0B8h+var_68], 0
                mov     [rsp+0B8h+var_70], 1
                mov     [rsp+0B8h+var_78], eax
                mov     rax, [rsp+0B8h+arg_10]
                mov     [rsp+0B8h+var_80], rcx
                mov     rcx, rax
                mov     [rsp+0B8h+var_88], r10
                mov     [rsp+0B8h+var_90], r8
                mov     r8, rbp
                mov     [rsp+0B8h+var_98], rdx
                mov     rdx, [rax+308h]
                call    sub_140204F20
                mov     eax, [rsp+0B8h+arg_0]
                inc     eax
                test    eax, 0FFFFFFFDh
                jnz     short loc_140922E0F
                mov     rcx, [rsp+0B8h+arg_10]
                xor     eax, eax
                mov     byte ptr [rsp+0B8h+var_88], al
                mov     r9b, 1
                mov     byte ptr [rsp+0B8h+var_90], al
                mov     r8, r14
                xor     edx, edx
                mov     byte ptr [rsp+0B8h+var_98], al
                call    sub_14021C4F0
                test    al, al
                jnz     short loc_140922DF5
                test    r13d, r13d
                jz      short loc_140922E0F
                mov     rcx, cs:qword_140C54330
                movzx   eax, word ptr [r14]
                cmp     [rcx], ax
                jnz     short loc_140922E0F
                mov     r8d, r13d
                mov     rdx, r14
                call    memcmp
                test    eax, eax
                jnz     short loc_140922E0F

loc_140922DF5:                          ; CODE XREF: SeExamineSacl+2EF↑j
                mov     eax, [rsp+0B8h+arg_18]
                test    [rsp+0B8h+var_58], eax
                jnz     loc_140922C52
                test    dil, sil
                jz      short loc_140922E0F

loc_140922E0B:                          ; CODE XREF: SeExamineSacl+17B↑j
                                        ; SeExamineSacl+193↑j
                mov     byte ptr [r15], 1

loc_140922E0F:                          ; CODE XREF: SeExamineSacl+139↑j
                                        ; SeExamineSacl+14D↑j ...
                mov     edx, dword ptr [rsp+0B8h+arg_28]

loc_140922E16:                          ; CODE XREF: SeExamineSacl+FF↑j
                                        ; SeExamineSacl+1A2↑j ...
                movzx   eax, word ptr [rbx+2]
                inc     edx
                mov     r10, [rsp+0B8h+arg_10]
                add     rbx, rax
                mov     r8, [rsp+0B8h+arg_8]
                mov     dword ptr [rsp+0B8h+arg_28], edx
                cmp     edx, [rsp+0B8h+var_54]
                jb      loc_140922BCD

loc_140922E40:                          ; CODE XREF: SeExamineSacl+F1↑j
                test    rbp, rbp
                jz      short loc_140922E57
                mov     rcx, rbp
                call    sub_1402F8510
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag

loc_140922E57:                          ; CODE XREF: SeExamineSacl+4E↑j
                                        ; SeExamineSacl+5E↑j ...
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeExamineSacl   endp

algn_140922E69:                         ; DATA XREF: .pdata:00000001401229F4↑o
                align 10h
; Exported entry 2538. SeOpenObjectForDeleteAuditAlarm

; =============== S U B R O U T I N E =======================================


