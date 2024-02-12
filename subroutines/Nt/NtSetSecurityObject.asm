NtSetSecurityObject proc near           ; CODE XREF: sub_1407313B8+1028C9↓p
                                        ; sub_1407313B8+1029DD↓p ...

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = byte ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = byte ptr  28h

; FUNCTION CHUNK AT 0000000140826826 SIZE 0000018F BYTES

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0C0h
                xor     r15d, r15d
                mov     r14, r8
                mov     [rbp+57h+var_68], r15
                mov     ebx, edx
                mov     [rbp+57h+var_7C], r15d
                mov     r10, rcx
                mov     [rbp+57h+var_48], r15
                mov     [rbp+57h+var_70], r15
                mov     [rbp+57h+var_78], r15
                mov     [rbp+57h+var_58], r15
                mov     [rbp+57h+var_50], r15
                test    r8, r8
                jz      loc_140826826
                mov     ecx, ebx
                and     edx, 80h
                and     ecx, 100h
                bt      ebx, 10h
                jb      loc_140826830

loc_1406FAD39:                          ; CODE XREF: NtSetSecurityObject+12BB73↓j
                                        ; NtSetSecurityObject+12BB7D↓j
                lea     rdx, [rbp+57h+var_7C]
                mov     ecx, ebx
                call    sub_1406FB008
                mov     rcx, gs:188h
                lea     rax, [rbp+57h+var_48]
                mov     esi, [rbp+57h+var_7C]
                xor     r8d, r8d
                mov     [rsp+0F0h+var_C8], rax
                mov     edx, esi
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_60], r15
                mov     r13b, [rcx+232h]
                mov     rcx, r10
                mov     r9b, r13b
                mov     [rbp+57h+arg_18], r13b
                mov     [rsp+0F0h+var_D0], rax
                call    ObReferenceObjectByHandle
                mov     edi, eax
                test    eax, eax
                js      loc_1406FAEAE
                lea     rax, [rbp+57h+var_68]
                mov     r9b, 1
                mov     r8d, 1
                mov     [rsp+0F0h+var_D0], rax
                mov     dl, r13b
                mov     rcx, r14
                call    SeCaptureSecurityDescriptor
                mov     r14, [rbp+57h+var_60]
                mov     edi, eax
                test    eax, eax
                js      loc_1406FAEA6
                mov     r12, [rbp+57h+var_68]
                mov     eax, 4
                mov     r15d, ebx
                movzx   ecx, word ptr [r12+2]
                bt      cx, ax
                setnb   dl
                bt      ebx, 10h
                setb    cl
                and     r15d, 0FFFFFE07h
                and     dl, cl
                cmovz   r15d, ebx
                test    r15b, 1
                jnz     loc_1406FAFE0

loc_1406FADED:                          ; CODE XREF: NtSetSecurityObject+316↓j
                test    r15b, 2
                jnz     loc_1406FAFF1

loc_1406FADF7:                          ; CODE XREF: NtSetSecurityObject+327↓j
                mov     ebx, 0FFF3FFFFh
                test    byte ptr [rbp+57h+var_48], al
                jnz     short loc_1406FAE03
                and     esi, ebx

loc_1406FAE03:                          ; CODE XREF: NtSetSecurityObject+12F↑j
                test    esi, esi
                jnz     loc_1406FAFA3

loc_1406FAE0B:                          ; CODE XREF: NtSetSecurityObject+2F6↓j
                mov     r13, [rbp+57h+var_78]

loc_1406FAE0F:                          ; CODE XREF: NtSetSecurityObject+12BC4B↓j
                                        ; NtSetSecurityObject+12BC52↓j
                test    edi, edi
                js      loc_14082699C
                mov     edx, 40h ; '@'
                lea     r9, qword_140CFCE60
                test    dl, r15b
                jnz     loc_140826934

loc_1406FAE2C:                          ; CODE XREF: NtSetSecurityObject+12BC99↓j
                                        ; NtSetSecurityObject+12BCB7↓j
                mov     rbx, [rbp+57h+var_70]
                test    edi, edi
                js      short loc_1406FAE68
                mov     eax, r15d
                mov     edx, 20h ; ' '
                and     eax, edx
                mov     [rbp+57h+arg_10], eax
                jnz     loc_1406FAF43

loc_1406FAE47:                          ; CODE XREF: NtSetSecurityObject+2A8↓j
                                        ; NtSetSecurityObject+2BF↓j
                test    edi, edi
                js      short loc_1406FAE68
                mov     r8, r12
                mov     edx, r15d
                mov     rcx, r14
                call    ObSetSecurityObjectByPointer
                mov     edi, eax
                test    eax, eax
                js      short loc_1406FAE68
                test    esi, esi
                jnz     short loc_1406FAECC
                cmp     [rbp+57h+arg_10], esi
                jnz     short loc_1406FAECC

loc_1406FAE68:                          ; CODE XREF: NtSetSecurityObject+162↑j
                                        ; NtSetSecurityObject+179↑j ...
                mov     r12, [rbp+57h+var_58]

loc_1406FAE6C:                          ; CODE XREF: NtSetSecurityObject+26E↓j
                mov     rax, [rbp+57h+var_50]
                test    rax, rax
                jnz     loc_14082698C

loc_1406FAE79:                          ; CODE XREF: NtSetSecurityObject+12BCC7↓j
                test    r12, r12
                jnz     loc_1406FAF94

loc_1406FAE82:                          ; CODE XREF: NtSetSecurityObject+2CE↓j
                mov     r12, [rbp+57h+var_68]

loc_1406FAE86:                          ; CODE XREF: NtSetSecurityObject+12BC5F↓j
                                        ; NtSetSecurityObject+12BCD0↓j
                test    r13, r13
                jnz     loc_1406FAFD1

loc_1406FAE8F:                          ; CODE XREF: NtSetSecurityObject+30B↓j
                test    rbx, rbx
                jnz     loc_1408269A5

loc_1406FAE98:                          ; CODE XREF: NtSetSecurityObject+12BCE0↓j
                mov     dl, [rbp+57h+arg_18]
                mov     r8b, 1
                mov     rcx, r12
                call    SeReleaseSecurityDescriptor

loc_1406FAEA6:                          ; CODE XREF: NtSetSecurityObject+E0↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext

loc_1406FAEAE:                          ; CODE XREF: NtSetSecurityObject+B5↑j
                mov     eax, edi

loc_1406FAEB0:                          ; CODE XREF: NtSetSecurityObject+12BB5B↓j
                                        ; NtSetSecurityObject+12BB9E↓j
                mov     rbx, [rsp+0F0h+arg_8]
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406FAECC:                          ; CODE XREF: NtSetSecurityObject+191↑j
                                        ; NtSetSecurityObject+196↑j
                mov     [rsp+0F0h+var_90], r12
                lea     rax, [r14-30h]
                mov     r12, [rbp+57h+var_58]
                lea     r8, qword_140CFCE60
                shr     rax, 8
                xor     r9d, r9d
                movzx   edx, al
                xor     ecx, ecx
                movzx   eax, byte ptr [r14-18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     rax, [rbp+57h+var_50]
                mov     [rsp+0F0h+var_98], rax
                mov     rax, [rbp+57h+arg_0]
                mov     [rsp+0F0h+var_A0], r12
                mov     r8, [r8+rdx*8]
                mov     rdx, r14
                mov     [rsp+0F0h+var_A8], r13
                add     r8, 10h
                mov     [rsp+0F0h+var_B0], rbx
                mov     [rsp+0F0h+var_B8], r15d
                mov     [rsp+0F0h+var_C0], esi
                and     [rsp+0F0h+var_C8], 0
                mov     [rsp+0F0h+var_D0], rax
                call    sub_1406FB090
                jmp     loc_1406FAE6C
; ---------------------------------------------------------------------------

loc_1406FAF43:                          ; CODE XREF: NtSetSecurityObject+171↑j
                lea     rax, [r14-30h]
                shr     rax, 8
                movzx   r8d, al
                movzx   eax, byte ptr [r14-18h]
                xor     r8, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     r8, rax
                mov     rax, cs:IoFileObjectType
                cmp     [r9+r8*8], rax
                jnz     short loc_1406FAF7E
                mov     rax, [r14+8]
                mov     ecx, [rax+34h]
                test    cl, 10h
                jnz     loc_1406FAE47

loc_1406FAF7E:                          ; CODE XREF: NtSetSecurityObject+29C↑j
                lea     r9, [rbp+57h+var_58]
                xor     r8d, r8d
                mov     rcx, r14
                call    sub_1406FB40C
                mov     edi, eax
                jmp     loc_1406FAE47
; ---------------------------------------------------------------------------

loc_1406FAF94:                          ; CODE XREF: NtSetSecurityObject+1AC↑j
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag
                jmp     loc_1406FAE82
; ---------------------------------------------------------------------------

loc_1406FAFA3:                          ; CODE XREF: NtSetSecurityObject+135↑j
                xor     r8d, r8d
                lea     r9, [rbp+57h+var_78]
                mov     rcx, r14
                lea     edx, [r8+8]
                call    sub_1406FB40C
                mov     edi, eax
                test    eax, eax
                js      loc_140826927
                test    esi, 0FEFFFFFFh
                jz      loc_1406FAE0B
                jmp     loc_140826873
; ---------------------------------------------------------------------------

loc_1406FAFD1:                          ; CODE XREF: NtSetSecurityObject+1B9↑j
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag
                jmp     loc_1406FAE8F
; ---------------------------------------------------------------------------

loc_1406FAFE0:                          ; CODE XREF: NtSetSecurityObject+117↑j
                cmp     dword ptr [r12+4], 0
                jnz     loc_1406FADED
                jmp     loc_140826852
; ---------------------------------------------------------------------------

loc_1406FAFF1:                          ; CODE XREF: NtSetSecurityObject+121↑j
                cmp     dword ptr [r12+8], 0
                jnz     loc_1406FADF7
                jmp     loc_140826852
NtSetSecurityObject endp
