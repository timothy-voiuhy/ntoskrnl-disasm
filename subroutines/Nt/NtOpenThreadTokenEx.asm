NtOpenThreadTokenEx proc near           ; CODE XREF: NtOpenThreadToken+C↑p
                                        ; DATA XREF: .rdata:000000014004E1B0↑o ...

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = byte ptr -0D8h
var_D7          = byte ptr -0D7h
var_D6          = byte ptr -0D6h
var_D5          = byte ptr -0D5h
var_D4          = byte ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_56          = word ptr -56h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407FE4EA SIZE 00000035 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], rsi
                mov     [r11+18h], r8b
                mov     [rsp+arg_8], edx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0F0h
                mov     r10, rcx
                xor     r13d, r13d
                mov     [rsp+118h+var_C0], r13
                mov     [rsp+118h+var_D7], r13b
                mov     [rsp+118h+var_D6], r13b
                mov     [rsp+118h+var_C8], r13d
                xorps   xmm0, xmm0
                movups  [rsp+118h+var_98], xmm0
                mov     [rsp+118h+var_D5], r13b
                mov     [rsp+118h+var_A0], r13
                xor     eax, eax
                movups  xmmword ptr [r11-58h], xmm0
                movups  xmmword ptr [r11-48h], xmm0
                mov     [r11-38h], rax
                xorps   xmm1, xmm1
                movups  [rsp+118h+var_88], xmm1
                movups  xmmword ptr [r11-78h], xmm1
                movups  xmmword ptr [r11-68h], xmm1
                mov     [rsp+118h+var_B0], r13
                mov     [rsp+118h+var_A8], r13
                mov     [rsp+118h+var_D8], al
                mov     rax, gs:188h
                movzx   eax, byte ptr [rax+232h]
                mov     [rsp+118h+var_D4], al
                mov     ebx, 11FF2h
                mov     ecx, 1DF2h
                test    al, al
                cmovnz  ebx, ecx
                and     ebx, r9d
                mov     [rsp+118h+var_B8], ebx
                test    al, al
                jz      loc_14061C80B

loc_14061C5C7:                          ; DATA XREF: .rdata:000000014004E18C↑o
;   __try { // __except at loc_14061C5EC
                mov     rsi, [rsp+118h+arg_20]
                mov     rax, rsi
                mov     rcx, 7FFFFFFF0000h
                cmp     rsi, rcx
                jb      short loc_14061C5E4
                mov     rax, rcx

loc_14061C5E4:                          ; CODE XREF: NtOpenThreadTokenEx+CF↑j
                mov     rcx, [rax]
                mov     [rax], rcx
                jmp     short loc_14061C5EE
;   } // starts at 14061C5C7
; ---------------------------------------------------------------------------

loc_14061C5EC:                          ; DATA XREF: .rdata:000000014004E18C↑o
;   __except(1) // owned by 14061C5C7
                jmp     short loc_14061C649
; ---------------------------------------------------------------------------

loc_14061C5EE:                          ; CODE XREF: NtOpenThreadTokenEx+DA↑j
                                        ; NtOpenThreadTokenEx+303↓j
                mov     rax, gs:188h
                movzx   r9d, byte ptr [rax+232h]
                mov     r8, cs:PsThreadType
                mov     [rsp+118h+var_D0], r13
                mov     [rsp+118h+var_F0], r13
                lea     rax, [rsp+118h+var_D0]
                mov     [rsp+118h+var_F8], rax
                mov     edx, 800h
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      short loc_14061C649
                mov     rdi, [rsp+118h+var_D0]
                mov     eax, [rdi+510h]
                test    al, 8
                jnz     short loc_14061C667

loc_14061C63A:                          ; CODE XREF: NtOpenThreadTokenEx+1FA↓j
                mov     rcx, [rsp+118h+var_D0]
                call    PsDereferenceSiloContext
                mov     eax, 0C000007Ch

loc_14061C649:                          ; CODE XREF: NtOpenThreadTokenEx:loc_14061C5EC↑j
                                        ; NtOpenThreadTokenEx+119↑j ...
                lea     r11, [rsp+118h+var_28]
                mov     rbx, [r11+30h]
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

loc_14061C667:                          ; CODE XREF: NtOpenThreadTokenEx+128↑j
                mov     r15, gs:188h
                dec     word ptr [r15+1E4h]
                mov     r14, [rsp+118h+var_D0]
                add     r14, 500h
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockSharedEx
                mov     eax, [rdi+510h]
                test    al, 8
                jz      loc_1407FE4EA
                mov     rbx, [rsp+118h+var_D0]
                mov     r12, [rbx+4A8h]
                and     r12, 0FFFFFFFFFFFFFFF8h
                mov     edi, [rdi+510h]
                mov     rcx, r12
                call    ObfReferenceObject
                mov     eax, [rbx+4A8h]
                and     eax, 3
                mov     [rsp+118h+var_C8], eax
                movzx   eax, byte ptr [rbx+4A8h]
                shr     al, 2
                and     al, 1
                mov     [rsp+118h+var_D6], al
                shr     edi, 8
                and     dil, 1
                mov     [rsp+118h+var_D7], dil
                mov     ebx, [rsp+118h+var_B8]

loc_14061C6E7:                          ; CODE XREF: NtOpenThreadTokenEx+1E1FDD↓j
                mov     eax, 11h
                lock cmpxchg [r14], r13
                jnz     loc_14061C9FD

loc_14061C6F7:                          ; CODE XREF: NtOpenThreadTokenEx+4F5↓j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                test    r12, r12
                jz      loc_14061C63A
                mov     r13d, [rsp+118h+var_C8]
                test    r13d, r13d
                jz      loc_1407FE4F2
                movzx   edi, [rsp+118h+arg_10]
                test    dil, dil
                jz      short loc_14061C74A
                mov     rcx, gs:188h
                lea     rdx, [rsp+118h+var_98]
                call    PsDisableImpersonation
                mov     [rsp+118h+var_D5], al
                mov     r13d, [rsp+118h+var_C8]

loc_14061C74A:                          ; CODE XREF: NtOpenThreadTokenEx+219↑j
                movzx   r15d, [rsp+118h+var_D7]
                test    r15b, r15b
                jnz     loc_14061C818
                lea     rax, [rsp+118h+var_A0]
                mov     [rsp+118h+var_E8], rax
                movzx   eax, [rsp+118h+var_D4]
                mov     byte ptr [rsp+118h+var_F0], al
                mov     rax, cs:SeTokenObjectType
                mov     [rsp+118h+var_F8], rax
                mov     r9d, [rsp+118h+arg_8]
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, r12
                call    ObOpenObjectByPointer
                mov     rbx, [rsp+118h+var_B0]

loc_14061C792:                          ; CODE XREF: NtOpenThreadTokenEx+49D↓j
                mov     r14d, eax

loc_14061C795:                          ; CODE XREF: NtOpenThreadTokenEx+370↓j
                                        ; NtOpenThreadTokenEx+439↓j ...
                test    rbx, rbx
                jnz     loc_14061C9B2

loc_14061C79E:                          ; CODE XREF: NtOpenThreadTokenEx+4AC↓j
                cmp     [rsp+118h+var_D5], 0
                jz      short loc_14061C7C1
                mov     rcx, gs:188h
                lea     rdx, [rsp+118h+var_98]
                call    PsRestoreImpersonation
                movzx   r15d, [rsp+118h+var_D7]

loc_14061C7C1:                          ; CODE XREF: NtOpenThreadTokenEx+293↑j
                test    r14d, r14d
                js      short loc_14061C7CF
                test    r15b, r15b
                jnz     loc_14061C9C1

loc_14061C7CF:                          ; CODE XREF: NtOpenThreadTokenEx+2B4↑j
                                        ; NtOpenThreadTokenEx+4C3↓j
                mov     rcx, r12
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+118h+var_C0]
                test    rcx, rcx
                jnz     loc_14061C9D8

loc_14061C7E5:                          ; CODE XREF: NtOpenThreadTokenEx+4CD↓j
                mov     rcx, [rsp+118h+var_D0]
                call    PsDereferenceSiloContext
                test    r14d, r14d
                js      short loc_14061C803

loc_14061C7F4:                          ; DATA XREF: .rdata:000000014004E19C↑o
;   __try { // __except at loc_14061C7FE
                mov     rax, [rsp+118h+var_A0]
                mov     [rsi], rax
                jmp     short loc_14061C803
;   } // starts at 14061C7F4
; ---------------------------------------------------------------------------

loc_14061C7FE:                          ; DATA XREF: .rdata:000000014004E19C↑o
;   __except(1) // owned by 14061C7F4
                jmp     loc_14061C649
; ---------------------------------------------------------------------------

loc_14061C803:                          ; CODE XREF: NtOpenThreadTokenEx+2E2↑j
                                        ; NtOpenThreadTokenEx+2EC↑j
                mov     eax, r14d
                jmp     loc_14061C649
; ---------------------------------------------------------------------------

loc_14061C80B:                          ; CODE XREF: NtOpenThreadTokenEx+B1↑j
                mov     rsi, [rsp+118h+arg_20]
                jmp     loc_14061C5EE
; ---------------------------------------------------------------------------

loc_14061C818:                          ; CODE XREF: NtOpenThreadTokenEx+243↑j
                test    dil, dil
                jz      loc_14061C9E2
                mov     rax, qword ptr [rsp+118h+var_98]
                test    rax, rax
                jz      short loc_14061C83F
                mov     rax, [rax+450h]
                mov     [rsp+118h+var_A8], rax
                mov     [rsp+118h+var_D8], 1

loc_14061C83F:                          ; CODE XREF: NtOpenThreadTokenEx+31C↑j
                                        ; NtOpenThreadTokenEx+4E8↓j
                mov     rax, [rsp+118h+var_D0]
                mov     rdi, [rax+220h]
                mov     rcx, rdi
                call    PsReferencePrimaryToken
                mov     rbx, rax
                lea     r8, [rsp+118h+var_B0]
                mov     rdx, rax
                mov     rcx, r12
                call    sub_140621F90
                mov     r14d, eax
                lea     rcx, [rdi+4B8h]
                mov     rdx, rbx
                call    sub_14024C4A0
                mov     rbx, [rsp+118h+var_B0]
                test    r14d, r14d
                js      loc_14061C795
                test    rbx, rbx
                jz      short loc_14061C8BC
                mov     [rsp+118h+var_58], 1
                movzx   eax, [rsp+118h+var_56]
                test    ax, ax
                js      short loc_14061C8BC
                mov     [rsp+118h+var_38], rbx
                mov     ecx, 0FFF7h
                and     ax, cx
                or      ax, 4
                mov     [rsp+118h+var_56], ax

loc_14061C8BC:                          ; CODE XREF: NtOpenThreadTokenEx+379↑j
                                        ; NtOpenThreadTokenEx+38E↑j
                mov     dword ptr [rsp+118h+var_88], 30h ; '0'
                mov     qword ptr [rsp+118h+var_88+8], 0
                mov     eax, [rsp+118h+var_B8]
                mov     [rsp+118h+var_70], eax
                mov     [rsp+118h+var_78], 0
                test    rbx, rbx
                jz      loc_1407FE50E
                lea     rax, [rsp+118h+var_58]
                mov     [rsp+118h+var_68], rax

loc_14061C903:                          ; CODE XREF: NtOpenThreadTokenEx+1E200A↓j
                mov     [rsp+118h+var_60], 0
                lea     rax, [rsp+118h+var_C0]
                mov     [rsp+118h+var_E0], rax
                mov     byte ptr [rsp+118h+var_E8], 0
                mov     byte ptr [rsp+118h+var_F0], 0
                mov     dword ptr [rsp+118h+var_F8], r13d
                mov     r9d, 2
                movzx   r8d, [rsp+118h+var_D6]
                lea     rdx, [rsp+118h+var_88]
                mov     rcx, r12
                call    sub_14061E3A0
                mov     r14d, eax
                test    eax, eax
                js      loc_14061C795
                cmp     [rsp+118h+var_D8], 0
                jz      short loc_14061C968
                mov     rdx, [rsp+118h+var_A8]
                mov     rcx, [rsp+118h+var_C0]
                call    sub_14061BE6C
                mov     r14d, eax

loc_14061C968:                          ; CODE XREF: NtOpenThreadTokenEx+444↑j
                test    r14d, r14d
                js      loc_14061C795
                mov     rcx, [rsp+118h+var_C0]
                call    ObfReferenceObject
                lea     rax, [rsp+118h+var_A0]
                mov     [rsp+118h+var_E8], rax
                mov     [rsp+118h+var_F0], 0
                mov     dword ptr [rsp+118h+var_F8], 0
                xor     r9d, r9d
                mov     r8d, [rsp+118h+arg_8]
                xor     edx, edx
                mov     rcx, [rsp+118h+var_C0]
                call    sub_14061EFE0
                jmp     loc_14061C792
; ---------------------------------------------------------------------------

loc_14061C9B2:                          ; CODE XREF: NtOpenThreadTokenEx+288↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_14061C79E
; ---------------------------------------------------------------------------

loc_14061C9C1:                          ; CODE XREF: NtOpenThreadTokenEx+2B9↑j
                mov     r8, [rsp+118h+var_C0]
                mov     rdx, r12
                mov     rcx, [rsp+118h+var_D0]
                call    sub_14061D1E0
                jmp     loc_14061C7CF
; ---------------------------------------------------------------------------

loc_14061C9D8:                          ; CODE XREF: NtOpenThreadTokenEx+2CF↑j
                call    PsDereferenceSiloContext
                jmp     loc_14061C7E5
; ---------------------------------------------------------------------------

loc_14061C9E2:                          ; CODE XREF: NtOpenThreadTokenEx+30B↑j
                mov     rcx, [rsp+118h+var_D0]
                mov     rdx, [rcx+5B8h]
                test    rdx, rdx
                jnz     short loc_14061CA0A

loc_14061C9F3:                          ; CODE XREF: NtOpenThreadTokenEx+506↓j
                setnz   [rsp+118h+var_D8]
                jmp     loc_14061C83F
; ---------------------------------------------------------------------------

loc_14061C9FD:                          ; CODE XREF: NtOpenThreadTokenEx+1E1↑j
                mov     rcx, r14
                call    ExfReleasePushLockShared
                jmp     loc_14061C6F7
; ---------------------------------------------------------------------------

loc_14061CA0A:                          ; CODE XREF: NtOpenThreadTokenEx+4E1↑j
                mov     rax, [rdx+450h]
                mov     [rsp+118h+var_A8], rax
                jmp     short loc_14061C9F3
; } // starts at 14061C510
NtOpenThreadTokenEx endp
