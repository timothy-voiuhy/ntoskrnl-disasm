RtlCopySid      proc near               ; CODE XREF: sub_14030D258+6F7↑p
                                        ; SeConvertStringSidToSid+EDFBC↑p ...
                sub     rsp, 28h
                movzx   eax, byte ptr [r8+1]
                mov     r9, r8
                mov     r10, rdx
                lea     eax, ds:8[rax*4]
                cmp     eax, ecx
                ja      short loc_14061C440
                mov     r8d, eax
                mov     rdx, r9
                mov     rcx, r10
                call    memmove
                xor     eax, eax

loc_14061C43A:                          ; CODE XREF: RtlCopySid+35↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14061C440:                          ; CODE XREF: RtlCopySid+18↑j
                mov     eax, 0C0000023h
                jmp     short loc_14061C43A
RtlCopySid      endp

; ---------------------------------------------------------------------------
algn_14061C447:                         ; DATA XREF: .pdata:00000001400FD860↑o
                align 10h
; Exported entry 1916. PsReferencePrimaryToken

; =============== S U B R O U T I N E =======================================


                public PsReferencePrimaryToken
PsReferencePrimaryToken proc near       ; CODE XREF: sub_140219D20+102↑p
                                        ; sub_1402A97D8+1A2AF0↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                lea     rsi, [rcx+4B8h]
                mov     rdi, rcx
                mov     rcx, rsi
                call    sub_14024C570
                xor     r14d, r14d
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14061C496

loc_14061C47F:                          ; CODE XREF: PsReferencePrimaryToken+8E↓j
                mov     rbp, [rsp+38h+arg_10]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061C496:                          ; CODE XREF: PsReferencePrimaryToken+2D↑j
                mov     rbp, gs:188h
                dec     word ptr [rbp+1E4h]
                add     rdi, 438h
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockSharedEx
                mov     rcx, rsi
                call    sub_14021AEA8
                mov     rbx, rax
                mov     eax, 11h
                lock cmpxchg [rdi], r14
                jnz     short loc_14061C4E0

loc_14061C4CE:                          ; CODE XREF: PsReferencePrimaryToken+98↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                jmp     short loc_14061C47F
; ---------------------------------------------------------------------------

loc_14061C4E0:                          ; CODE XREF: PsReferencePrimaryToken+7C↑j
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     short loc_14061C4CE
PsReferencePrimaryToken endp

; ---------------------------------------------------------------------------
algn_14061C4EA:                         ; DATA XREF: .pdata:00000001400FD86C↑o
                align 10h
; Exported entry 1574. NtOpenThreadToken

; =============== S U B R O U T I N E =======================================


                public NtOpenThreadToken
NtOpenThreadToken proc near             ; DATA XREF: .pdata:00000001400FD878↑o
                                        ; PAGE:000000014098C128↓o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    NtOpenThreadTokenEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenThreadToken endp

algn_14061C507:                         ; DATA XREF: .pdata:00000001400FD878↑o
                align 10h
; Exported entry 1575. NtOpenThreadTokenEx

; =============== S U B R O U T I N E =======================================


                public NtOpenThreadTokenEx
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

; ---------------------------------------------------------------------------
algn_14061CA18:                         ; DATA XREF: .rdata:000000014004E1B0↑o
                                        ; .pdata:00000001400FD884↑o
                align 20h
; Exported entry 1799. PsDisableImpersonation

; =============== S U B R O U T I N E =======================================


                public PsDisableImpersonation
PsDisableImpersonation proc near        ; CODE XREF: NtOpenThreadTokenEx+22C↑p
                                        ; sub_14077B76C+143↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407FE520 SIZE 0000001A BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    r14
                sub     rsp, 20h
                mov     eax, [rcx+510h]
                xor     r14b, r14b
                mov     rsi, rdx
                mov     rbx, rcx
                test    al, 8
                jz      loc_14061CB31

loc_14061CA47:                          ; DATA XREF: .rdata:000000014004E1D8↑o
                                        ; .rdata:000000014004E1EC↑o ...
                mov     [rsp+28h+arg_0], rbp
                mov     rbp, gs:188h
                mov     [rsp+28h+arg_8], rdi
                dec     word ptr [rbp+1E4h]
                xor     edx, edx
                add     rcx, 500h
                call    ExAcquirePushLockExclusiveEx
                lock btr dword ptr [rbx+510h], 3
                jnb     short loc_14061CAC2
                mov     eax, [rbx+4A8h]
                mov     r14b, 1
                and     eax, 3
                mov     [rsi+0Ch], eax
                movzx   eax, byte ptr [rbx+4A8h]
                shr     al, 2
                and     al, r14b
                mov     [rsi+9], al
                mov     eax, [rbx+510h]
                shr     eax, 8
                and     al, r14b
                mov     [rsi+8], al
                mov     rax, [rbx+5B8h]
                test    rax, rax
                jnz     short loc_14061CB11
                mov     rax, [rbx+4A8h]
                and     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rsi], rax

loc_14061CAC2:                          ; CODE XREF: PsDisableImpersonation+58↑j
                                        ; PsDisableImpersonation+10F↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx+500h], rax
                test    al, 2
                jnz     loc_1407FE520

loc_14061CADA:                          ; CODE XREF: PsDisableImpersonation+1E1B02↓j
                                        ; PsDisableImpersonation+1E1B15↓j
                lea     rcx, [rbx+500h]
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rdi, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_0]
                test    r14b, r14b
                jz      short loc_14061CB31

loc_14061CAFD:                          ; DATA XREF: .pdata:00000001400FD89C↑o
                                        ; .pdata:00000001400FD8A8↑o
                mov     al, 1

loc_14061CAFF:                          ; CODE XREF: PsDisableImpersonation+127↓j
                mov     rbx, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061CB11:                          ; CODE XREF: PsDisableImpersonation+92↑j
                                        ; DATA XREF: .pdata:00000001400FD8A8↑o ...
                mov     [rsi], rax
                mov     rcx, [rbx+4A8h]
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     qword ptr [rbx+5B8h], 0
                call    PsDereferenceSiloContext
                jmp     short loc_14061CAC2
; ---------------------------------------------------------------------------

loc_14061CB31:                          ; CODE XREF: PsDisableImpersonation+21↑j
                                        ; PsDisableImpersonation+DB↑j
                                        ; DATA XREF: ...
                mov     dword ptr [rsi+0Ch], 0
                xor     al, al
                mov     word ptr [rsi+8], 0
                mov     qword ptr [rsi], 0
                jmp     short loc_14061CAFF
PsDisableImpersonation endp

; ---------------------------------------------------------------------------
algn_14061CB49:                         ; DATA XREF: .pdata:00000001400FD8C0↑o
                align 10h
; Exported entry 1929. PsRestoreImpersonation

; =============== S U B R O U T I N E =======================================


                public PsRestoreImpersonation
PsRestoreImpersonation proc near        ; CODE XREF: NtOpenThreadTokenEx+2A6↑p
                                        ; sub_14077FF64+2FF↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407FE53A SIZE 00000067 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    r13
                push    r15
                sub     rsp, 20h
                mov     r15, gs:188h
                xor     ebp, ebp

loc_14061CB67:                          ; DATA XREF: .rdata:000000014004E250↑o
                                        ; .rdata:000000014004E268↑o ...
                mov     [rsp+48h+arg_0], rdi
                mov     rsi, rcx
                mov     rdi, [rdx]
                mov     r13d, ebp

loc_14061CB75:                          ; DATA XREF: .rdata:000000014004E268↑o
                                        ; .rdata:000000014004E278↑o ...
                mov     [rsp+48h+arg_8], r12
                mov     r12d, ebp
                mov     [rsp+48h+arg_10], r14
                mov     r14, rdx
                test    rdi, rdi
                jz      loc_1407FE53A
                mov     rcx, rdi
                call    sub_14021B4A4
                test    rax, rax
                jnz     loc_14061CC73

loc_14061CB9F:                          ; CODE XREF: PsRestoreImpersonation+136↓j
                mov     ebx, [r14+0Ch]
                movzx   eax, byte ptr [r14+9]
                and     ebx, 3
                neg     al
                sbb     rcx, rcx
                and     rdi, 0FFFFFFFFFFFFFFF8h
                and     ecx, 4
                or      rbx, rcx
                or      rbx, rdi

loc_14061CBBD:                          ; CODE XREF: PsRestoreImpersonation+1E19ED↓j
                dec     word ptr [r15+1E4h]
                xor     edx, edx
                lea     rcx, [rsi+500h]
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rsi+510h]
                test    al, 8
                jnz     loc_1407FE542

loc_14061CBE1:                          ; CODE XREF: PsRestoreImpersonation+1E1A04↓j
                cmp     qword ptr [r14], 0
                jz      loc_14061CC8B
                mov     [rsi+4A8h], rbx
                mov     [rsi+5B8h], r12
                cmp     byte ptr [r14+8], 0
                jnz     short loc_14061CC66
                lock and dword ptr [rsi+510h], 0FFFFFEFFh

loc_14061CC0B:                          ; CODE XREF: PsRestoreImpersonation+121↓j
                lock or dword ptr [rsi+510h], 8

loc_14061CC13:                          ; CODE XREF: PsRestoreImpersonation+144↓j
                xor     bl, bl

loc_14061CC15:                          ; CODE XREF: PsRestoreImpersonation+14C↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi+500h], rax
                mov     r14, [rsp+48h+arg_10]
                mov     r12, [rsp+48h+arg_8]
                test    al, 2
                jnz     loc_1407FE559

loc_14061CC37:                          ; CODE XREF: PsRestoreImpersonation+1E1A0B↓j
                                        ; PsRestoreImpersonation+1E1A1E↓j
                                        ; DATA XREF: ...
                lea     rcx, [rsi+500h]
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     rdi, [rsp+48h+arg_0]
                test    rbp, rbp
                jnz     loc_1407FE573

loc_14061CC59:                          ; CODE XREF: PsRestoreImpersonation+1E1A3A↓j
                                        ; PsRestoreImpersonation+1E1A4C↓j
                                        ; DATA XREF: ...
                add     rsp, 20h
                pop     r15
                pop     r13
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061CC66:                          ; CODE XREF: PsRestoreImpersonation+AE↑j
                                        ; DATA XREF: .pdata:00000001400FD8FC↑o ...
                lock or dword ptr [rsi+510h], 100h
                jmp     short loc_14061CC0B
; ---------------------------------------------------------------------------

loc_14061CC73:                          ; CODE XREF: PsRestoreImpersonation+49↑j
                call    sub_14021B4A4
                mov     rcx, rax
                mov     rdi, rax
                call    ObfReferenceObject
                mov     r12, [r14]
                jmp     loc_14061CB9F
; ---------------------------------------------------------------------------

loc_14061CC8B:                          ; CODE XREF: PsRestoreImpersonation+95↑j
                lock btr dword ptr [rsi+510h], 3
                jnb     loc_14061CC13
                mov     bl, 1
                jmp     loc_14061CC15
PsRestoreImpersonation endp

; ---------------------------------------------------------------------------
algn_14061CCA1:                         ; DATA XREF: .pdata:00000001400FD908↑o
                align 10h
; Exported entry 1570. NtOpenProcessToken

; =============== S U B R O U T I N E =======================================


                public NtOpenProcessToken
NtOpenProcessToken proc near            ; DATA XREF: .pdata:00000001400FD914↑o
                                        ; PAGE:000000014098BDE8↓o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    NtOpenProcessTokenEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenProcessToken endp

algn_14061CCC5:                         ; DATA XREF: .pdata:00000001400FD914↑o
                align 10h
; Exported entry 1571. NtOpenProcessTokenEx

; =============== S U B R O U T I N E =======================================


                public NtOpenProcessTokenEx
NtOpenProcessTokenEx proc near          ; CODE XREF: NtOpenProcessToken+A↑p
                                        ; sub_140917668+5E↓p
                                        ; DATA XREF: ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     [rsp+arg_18], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r14, r9
                mov     r13d, edx
                xor     r10d, r10d
                mov     [rsp+78h+var_30], r10
                mov     rax, gs:188h
                movzx   r15d, byte ptr [rax+232h]
                mov     ebx, 11FF2h
                mov     eax, 1DF2h
                test    r15b, r15b
                cmovnz  ebx, eax
                and     ebx, r8d
                test    r15b, r15b
                jz      short loc_14061CD47

loc_14061CD25:                          ; DATA XREF: .rdata:000000014004E31C↑o
;   __try { // __except at loc_14061CD42
                mov     rdx, r9
                mov     rax, 7FFFFFFF0000h
                cmp     r9, rax
                jb      short loc_14061CD3A
                mov     rdx, rax

loc_14061CD3A:                          ; CODE XREF: NtOpenProcessTokenEx+65↑j
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_14061CD47
;   } // starts at 14061CD25
; ---------------------------------------------------------------------------

loc_14061CD42:                          ; DATA XREF: .rdata:000000014004E31C↑o
;   __except(1) // owned by 14061CD25
                jmp     loc_14061CDFE
; ---------------------------------------------------------------------------

loc_14061CD47:                          ; CODE XREF: NtOpenProcessTokenEx+53↑j
                                        ; NtOpenProcessTokenEx+70↑j
                mov     [rsp+78h+var_38], r10
                mov     rax, gs:188h
                movzx   r9d, byte ptr [rax+232h]
                mov     r8, cs:PsProcessType
                mov     [rsp+78h+var_40], r10
                mov     [rsp+78h+var_48], r10
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_50], rax
                mov     dword ptr [rsp+78h+var_58], 65537350h
                mov     edx, 1000h
                call    sub_140645090
                test    eax, eax
                js      short loc_14061CDFE
                mov     rsi, [rsp+78h+var_38]
                lea     r12, [rsi+4B8h]
                mov     rcx, r12
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14061CE1E

loc_14061CDAA:                          ; CODE XREF: NtOpenProcessTokenEx+1A9↓j
                mov     edx, 65537350h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                lea     rax, [rsp+78h+var_30]
                mov     [rsp+78h+var_48], rax
                mov     byte ptr [rsp+78h+var_50], r15b
                mov     rax, cs:SeTokenObjectType
                mov     [rsp+78h+var_58], rax
                mov     r9d, r13d
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, rdi
                call    ObOpenObjectByPointer
                mov     ebx, eax
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                test    ebx, ebx
                js      short loc_14061CDFC

loc_14061CDF0:                          ; DATA XREF: .rdata:000000014004E32C↑o
;   __try { // __except at loc_14061CDFA
                mov     rcx, [rsp+78h+var_30]
                mov     [r14], rcx
                jmp     short loc_14061CDFC
;   } // starts at 14061CDF0
; ---------------------------------------------------------------------------

loc_14061CDFA:                          ; DATA XREF: .rdata:000000014004E32C↑o
;   __except(1) // owned by 14061CDF0
                jmp     short loc_14061CDFE
; ---------------------------------------------------------------------------

loc_14061CDFC:                          ; CODE XREF: NtOpenProcessTokenEx+11E↑j
                                        ; NtOpenProcessTokenEx+128↑j
                mov     eax, ebx

loc_14061CDFE:                          ; CODE XREF: NtOpenProcessTokenEx:loc_14061CD42↑j
                                        ; NtOpenProcessTokenEx+BC↑j ...
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061CE1E:                          ; CODE XREF: NtOpenProcessTokenEx+D8↑j
                mov     rax, gs:188h
                mov     [rsp+78h+var_28], rax
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+78h+var_38]
                add     rsi, 438h
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rcx, r12
                call    sub_14021AEA8
                mov     rdi, rax
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     short loc_14061CE7E

loc_14061CE62:                          ; CODE XREF: NtOpenProcessTokenEx+1B6↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, [rsp+78h+var_28]
                call    sub_14021E1F0
                mov     rsi, [rsp+78h+var_38]
                jmp     loc_14061CDAA
; ---------------------------------------------------------------------------

loc_14061CE7E:                          ; CODE XREF: NtOpenProcessTokenEx+190↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_14061CE62
; } // starts at 14061CCD0
NtOpenProcessTokenEx endp

; ---------------------------------------------------------------------------
algn_14061CE88:                         ; DATA XREF: .pdata:00000001400FD920↑o
                align 10h
; Exported entry 1662. ObOpenObjectByPointer

; =============== S U B R O U T I N E =======================================


                public ObOpenObjectByPointer
ObOpenObjectByPointer proc near         ; CODE XREF: sub_1405D28C4+2BB↑p
                                        ; NtOpenThreadTokenEx+278↑p ...

var_258         = qword ptr -258h
var_250         = dword ptr -250h
var_248         = byte ptr -248h
var_240         = qword ptr -240h
var_238         = dword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_218         = dword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1D8         = byte ptr -1D8h
var_138         = byte ptr -138h
var_58          = qword ptr -58h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407FE5A2 SIZE 00000082 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 240h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_58], rax
                mov     r14, [rsp+278h+arg_30]
                mov     rbx, r8
                mov     ebp, edx
                mov     [rsp+278h+var_218], r9d
                mov     rsi, rcx
                xor     edx, edx
                mov     r8d, 0E0h
                lea     rcx, [rsp+278h+var_138]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+278h+var_1D8]
                mov     r8d, 0A0h
                call    memset
                movzx   r15d, [rsp+278h+arg_28]
                xor     r12d, r12d
                mov     rdi, [rsp+278h+arg_20]
                movzx   r9d, r15b
                mov     r8, rdi
                mov     [r14], r12
                xor     edx, edx
                mov     dword ptr [rsp+278h+var_258], 6E48624Fh
                mov     rcx, rsi
                call    ObReferenceObjectByPointerWithTag
                test    eax, eax
                js      loc_14061D073
                test    rdi, rdi
                jz      loc_14061D096

loc_14061CF34:                          ; CODE XREF: ObOpenObjectByPointer+22D↓j
                test    [rdi+48h], ebp
                jnz     loc_1407FE607
                test    byte ptr [rsi-15h], 1
                jnz     loc_14061D153

loc_14061CF47:                          ; CODE XREF: ObOpenObjectByPointer+2C7↓j
                test    rbx, rbx
                jnz     loc_14061D015
                mov     rax, gs:188h
                mov     rbx, gs:188h
; } // starts at 14061CE90

loc_14061CF62:                          ; DATA XREF: .rdata:000000014004E364↑o
                                        ; .rdata:000000014004E378↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+278h+var_40], r13
                mov     [rsp+278h+var_1F8], r12
                mov     r13, [rax+0B8h]
                mov     rax, [r13+440h]
                mov     [rsp+278h+var_1E8], rax
                test    rbx, rbx
                jz      short loc_14061CF9B
                mov     eax, [rbx+510h]
                test    al, 8
                jnz     loc_14061D0C2

loc_14061CF9B:                          ; CODE XREF: ObOpenObjectByPointer+FB↑j
                                        ; ObOpenObjectByPointer+2AC↓j
                mov     [rsp+278h+var_200], r12
                lea     r12, [r13+4B8h]
                mov     rcx, r12
                call    sub_14024C570
                mov     rbx, rax
                test    rax, rax
                jz      loc_14061D16C
                xor     r12d, r12d

loc_14061CFBE:                          ; CODE XREF: ObOpenObjectByPointer+32F↓j
                cmp     cs:dword_140D2D010, 0
                mov     r13, [rsp+278h+var_40]
                mov     [rsp+278h+var_1F0], rbx
                jnz     loc_1407FE5A2
; } // starts at 14061CF62

loc_14061CFDB:                          ; CODE XREF: ObOpenObjectByPointer+1E1737↓j
                                        ; ObOpenObjectByPointer+1E1757↓j ...
; __unwind { // __GSHandlerCheck
                mov     r9d, [rsp+278h+var_218]
                lea     rax, [rdi+4Ch]
                lea     r8, [rsp+278h+var_138]
                mov     [rsp+278h+var_258], rax
                lea     rdx, [rsp+278h+var_1D8]
                lea     rcx, [rsp+278h+var_200]
                call    sub_14024C690
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FE5F3
                lea     rbx, [rsp+278h+var_1D8]

loc_14061D015:                          ; CODE XREF: ObOpenObjectByPointer+BA↑j
                mov     [rsp+278h+var_228], r14
                xor     r8d, r8d
                mov     [rsp+278h+var_230], r12
                mov     r9, rbx
                mov     [rsp+278h+var_238], r12d
                mov     rdx, rsi
                mov     [rsp+278h+var_240], r12
                mov     [rsp+278h+var_248], r15b
                lea     ecx, [r8+1]
                mov     [rsp+278h+var_250], ebp
                mov     dword ptr [rsp+278h+var_258], r12d
                call    sub_14064A9E0
                mov     edi, eax
                test    eax, eax
                js      loc_14061D141

loc_14061D053:                          ; CODE XREF: ObOpenObjectByPointer+2BE↓j
                lea     rax, [rsp+278h+var_1D8]
                cmp     rbx, rax
                jnz     short loc_14061D071
                mov     rcx, rbx
                call    sub_14024C4F0
                lea     rcx, [rbx+20h]
                call    SeReleaseSubjectContext

loc_14061D071:                          ; CODE XREF: ObOpenObjectByPointer+1CE↑j
                mov     eax, edi

loc_14061D073:                          ; CODE XREF: ObOpenObjectByPointer+95↑j
                                        ; ObOpenObjectByPointer+1E1772↓j ...
                mov     rcx, [rsp+278h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 240h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061D096:                          ; CODE XREF: ObOpenObjectByPointer+9E↑j
                lea     rax, [rsi-30h]
                shr     rax, 8
                lea     rdi, qword_140CFCE60
                movzx   ecx, al
                movzx   eax, byte ptr [rsi-18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                mov     rdi, [rdi+rcx*8]
                jmp     loc_14061CF34
; } // starts at 14061CFDB
; ---------------------------------------------------------------------------

loc_14061D0C2:                          ; CODE XREF: ObOpenObjectByPointer+105↑j
                                        ; DATA XREF: .pdata:00000001400FD944↑o ...
; __unwind { // __GSHandlerCheck
                mov     rax, gs:188h
                mov     [rsp+278h+var_208], rax
                dec     word ptr [rax+1E4h]
                lea     rcx, [rbx+500h]
                xor     edx, edx
                mov     [rsp+278h+var_210], rcx
                call    ExAcquirePushLockSharedEx
                mov     eax, [rbx+510h]
                test    al, 8
                jz      short loc_14061D117
                mov     r12, [rbx+4A8h]
                and     r12, 0FFFFFFFFFFFFFFF8h
                mov     rcx, r12
                call    ObfReferenceObject
                mov     eax, [rbx+4A8h]
                and     eax, 3
                mov     dword ptr [rsp+278h+var_1F8], eax

loc_14061D117:                          ; CODE XREF: ObOpenObjectByPointer+262↑j
                mov     rbx, [rsp+278h+var_210]
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rbx], rcx
                jnz     short loc_14061D162

loc_14061D12A:                          ; CODE XREF: ObOpenObjectByPointer+2DA↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, [rsp+278h+var_208]
                call    sub_14021E1F0
                jmp     loc_14061CF9B
; } // starts at 14061D0C2
; ---------------------------------------------------------------------------

loc_14061D141:                          ; CODE XREF: ObOpenObjectByPointer+1BD↑j
                                        ; DATA XREF: .pdata:00000001400FD950↑o ...
; __unwind { // __GSHandlerCheck
                mov     edx, 6E48624Fh
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                jmp     loc_14061D053
; ---------------------------------------------------------------------------

loc_14061D153:                          ; CODE XREF: ObOpenObjectByPointer+B1↑j
                cmp     [rsi-10h], r12
                jz      loc_14061CF47
                jmp     loc_1407FE607
; } // starts at 14061D141
; ---------------------------------------------------------------------------

loc_14061D162:                          ; CODE XREF: ObOpenObjectByPointer+298↑j
                                        ; DATA XREF: .pdata:00000001400FD95C↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_14061D12A
; ---------------------------------------------------------------------------

loc_14061D16C:                          ; CODE XREF: ObOpenObjectByPointer+125↑j
                mov     rax, gs:188h
                mov     [rsp+278h+var_208], rax
                dec     word ptr [rax+1E4h]
                add     r13, 438h
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockSharedEx
                mov     rcx, r12
                call    sub_14021AEA8
                mov     rbx, rax
                xor     r12d, r12d
                mov     eax, 11h
                lock cmpxchg [r13+0], r12
                jnz     short loc_14061D1C4

loc_14061D1AD:                          ; CODE XREF: ObOpenObjectByPointer+33C↓j
                mov     rcx, r13
                call    sub_140243660
                mov     rcx, [rsp+278h+var_208]
                call    sub_14021E1F0
                jmp     loc_14061CFBE
; ---------------------------------------------------------------------------

loc_14061D1C4:                          ; CODE XREF: ObOpenObjectByPointer+31B↑j
                mov     rcx, r13
                call    ExfReleasePushLockShared
                jmp     short loc_14061D1AD
; } // starts at 14061D162
ObOpenObjectByPointer endp

; ---------------------------------------------------------------------------
algn_14061D1CE:                         ; DATA XREF: .pdata:00000001400FD968↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14061D1E0   proc near               ; CODE XREF: NtOpenThreadTokenEx+4BE↑p
                                        ; DATA XREF: .rdata:000000014004E434↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407FE624 SIZE 00000038 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                mov     eax, [rcx+510h]
                xor     edi, edi
                mov     r12, r8
                mov     rbp, rdx
                mov     rbx, rcx
                mov     r14d, edi
                test    al, 8
                jz      loc_1407FE624

loc_14061D20F:                          ; DATA XREF: .rdata:000000014004E434↑o
                                        ; .rdata:000000014004E448↑o ...
                mov     [rsp+38h+arg_0], rsi
                mov     rcx, r8
                mov     [rsp+38h+arg_8], r15
                mov     r15, gs:188h
                call    ObfReferenceObject
                dec     word ptr [r15+1E4h]
                xor     edx, edx
                lea     rcx, [rbx+500h]
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rbx+510h]
                test    al, 8
                jz      loc_1407FE638
                mov     rcx, [rbx+4A8h]
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFFFF8h
                cmp     rax, rbp
                jnz     loc_1407FE62E
                test    dword ptr [rbx+510h], 100h
                jz      loc_1407FE62E
                mov     r14, [rbx+5B8h]
                and     ecx, 7
                or      rcx, r12
                mov     [rbx+5B8h], rdi
                mov     [rbx+4A8h], rcx
                lock and dword ptr [rbx+510h], 0FFFFFEFFh

loc_14061D29B:                          ; CODE XREF: sub_14061D1E0+1E1453↓j
                                        ; sub_14061D1E0+1E145D↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx+500h], rax
                test    al, 2
                jnz     loc_1407FE642

loc_14061D2B3:                          ; CODE XREF: sub_14061D1E0+1E1464↓j
                                        ; sub_14061D1E0+1E1477↓j
                lea     rcx, [rbx+500h]
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     r15, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_0]
                test    edi, edi
                js      short loc_14061D303

loc_14061D2D5:                          ; DATA XREF: .pdata:00000001400FD980↑o
                                        ; .pdata:00000001400FD98C↑o
                mov     rcx, rbp
                call    PsDereferenceSiloContext
                test    r14, r14
                jnz     short loc_14061D2F9

loc_14061D2E2:                          ; CODE XREF: sub_14061D1E0+121↓j
                mov     eax, edi

loc_14061D2E4:                          ; CODE XREF: sub_14061D1E0+1E1449↓j
                mov     rbx, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061D2F9:                          ; CODE XREF: sub_14061D1E0+100↑j
                mov     rcx, r14

loc_14061D2FC:                          ; CODE XREF: sub_14061D1E0+126↓j
                call    PsDereferenceSiloContext
                jmp     short loc_14061D2E2
; ---------------------------------------------------------------------------

loc_14061D303:                          ; CODE XREF: sub_14061D1E0+F3↑j
                mov     rcx, r12
                jmp     short loc_14061D2FC
sub_14061D1E0   endp

; ---------------------------------------------------------------------------
algn_14061D308:                         ; DATA XREF: .pdata:00000001400FD98C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14061D310   proc near               ; CODE XREF: sub_140372284+9F↑p
                                        ; sub_14061BAA0+202↑p ...

var_158         = dword ptr -158h
var_150         = dword ptr -150h
var_148         = qword ptr -148h
var_140         = byte ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = byte ptr -128h
var_120         = dword ptr -120h
var_118         = qword ptr -118h
var_108         = qword ptr -108h
var_F8          = dword ptr -0F8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_68          = qword ptr -68h
var_48          = qword ptr -48h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = byte ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h

; FUNCTION CHUNK AT 00000001407FE65C SIZE 000000E7 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 150h
                mov     rbp, r8
                mov     r15, rdx
                mov     r14, rcx
                xor     edx, edx
                mov     r8d, 0C8h
                lea     rcx, [rsp+178h+var_F8]
                mov     esi, r9d
                xor     ebx, ebx
                call    memset
                movzx   eax, [rsp+178h+arg_50]
                lea     rcx, [rsp+178h+var_F8]
                mov     r12, [rsp+178h+arg_60]
                mov     r9d, esi
                mov     r13d, [rsp+178h+arg_58]
                mov     r8, rbp
                mov     [rsp+178h+var_118], r12
                mov     rdx, r15
                mov     [rsp+178h+var_120], r13d
                mov     [rsp+178h+var_128], al
                mov     rax, [rsp+178h+arg_48]
                mov     [rsp+178h+var_130], rax
                mov     rax, [rsp+178h+arg_40]
                mov     [rsp+178h+var_138], rax
                movzx   eax, [rsp+178h+arg_38]
                mov     [rsp+178h+var_140], al
                mov     rax, [rsp+178h+arg_30]
                mov     [rsp+178h+var_148], rax
                mov     eax, [rsp+178h+arg_28]
                mov     [rsp+178h+var_150], eax
                mov     eax, [rsp+178h+arg_20]
                mov     [rsp+178h+var_158], eax
                call    sub_14061D530
                mov     edi, eax
                test    eax, eax
                js      loc_14061D4C2

loc_14061D3E1:                          ; CODE XREF: sub_14061D310+1E13FC↓j
                or      [rsp+178h+var_F8], ebx
                cmp     [rsp+178h+var_D0], 0
                jz      loc_14061D4F3

loc_14061D3F7:                          ; CODE XREF: sub_14061D310+1EC↓j
                lea     rcx, [rsp+178h+var_F8]
                call    sub_14061BEE0
                mov     edi, eax
                cmp     eax, 0C0000054h
                jz      loc_1407FE65C
                cmp     eax, 0C0000476h
                jz      loc_1407FE65C

loc_14061D41C:                          ; CODE XREF: sub_14061D310+201↓j
                test    edi, edi
                js      loc_14061D4C2
                lea     rcx, [rsp+178h+var_F8]
                call    sub_14061D820
                mov     edi, eax
                test    eax, eax
                js      loc_14061D4C2
                mov     rbx, [rsp+178h+var_B8]
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                mov     rsi, [rsp+178h+var_68]
                mov     rax, rdx
                mov     rcx, [rbx]
                lock cmpxchg [rcx+18h], rdx
                test    byte ptr [rsp+178h+var_F8], 9
                setz    dl
                test    dword ptr [rbx+38h], 8000h
                setnz   cl
                test    cl, dl
                jz      short loc_14061D4A9

loc_14061D477:                          ; CODE XREF: sub_14061D310+19D↓j
                mov     rdx, [rsi+30h]
                mov     rcx, rsi
                mov     [rsi+30h], rax
                mov     r8d, [rsp+178h+var_F8]
                mov     [rsp+178h+var_108], rdx
                and     r8d, 1
                lea     rdx, [rsp+178h+var_108]
                call    sub_1406E91EC
                mov     edi, eax
                test    eax, eax
                js      loc_1407FE717
                jmp     short loc_14061D4AF
; ---------------------------------------------------------------------------

loc_14061D4A9:                          ; CODE XREF: sub_14061D310+165↑j
                cmp     [rsi+30h], rax
                ja      short loc_14061D477

loc_14061D4AF:                          ; CODE XREF: sub_14061D310+197↑j
                mov     [r14], rsi
                test    dword ptr cs:xmmword_140CFC480+4, 400001h
                jnz     loc_1407FE725

loc_14061D4C2:                          ; CODE XREF: sub_14061D310+CB↑j
                                        ; sub_14061D310+10E↑j ...
                mov     rcx, [rsp+178h+var_48]
                test    rcx, rcx
                jnz     short loc_14061D516

loc_14061D4CF:                          ; CODE XREF: sub_14061D310+20B↓j
                lea     r11, [rsp+178h+var_28]
                mov     eax, edi
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
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

loc_14061D4F3:                          ; CODE XREF: sub_14061D310+E1↑j
                cmp     [rsp+178h+var_C8], 0
                jnz     loc_14061D3F7
                lea     rcx, [rsp+178h+var_F8]
                call    sub_1406A13BC
                mov     edi, eax
                jmp     loc_14061D41C
; ---------------------------------------------------------------------------

loc_14061D516:                          ; CODE XREF: sub_14061D310+1BD↑j
                call    sub_1402073C8
                jmp     short loc_14061D4CF
sub_14061D310   endp

; ---------------------------------------------------------------------------
byte_14061D51D  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014004E4A4↑o
                                        ; .pdata:00000001400FD998↑o

; =============== S U B R O U T I N E =======================================


sub_14061D530   proc near               ; CODE XREF: sub_14061D310+C2↑p
                                        ; sub_14061D310+1E13ED↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = byte ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h

; FUNCTION CHUNK AT 00000001407FE744 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     edi, [rsp+48h+arg_20]
                mov     rbx, rcx
                test    dil, 7Fh
                jnz     loc_1407FE79E
                mov     rax, [rsp+48h+arg_30]
                mov     esi, [rsp+48h+arg_28]
                mov     [rcx+0A0h], rax
                mov     eax, [rsp+48h+arg_58]
                mov     [rcx+0A8h], eax
                movzx   eax, [rsp+48h+arg_38]
                mov     [rcx+98h], r8
                movzx   r8d, [rsp+48h+arg_50]
                mov     [rcx+18h], al
                mov     [rcx+14h], edi
                mov     [rcx+8], rdx
                mov     [rcx+1Ch], r9d
                mov     [rcx+48h], r8b
                test    sil, 1
                jnz     loc_14061D71A

loc_14061D5A9:                          ; CODE XREF: sub_14061D530+1F0↓j
                test    sil, 2
                jnz     loc_14061D6DE

loc_14061D5B3:                          ; CODE XREF: sub_14061D530+1B9↓j
                                        ; sub_14061D530+1E121B↓j
                mov     eax, [rcx+8Ch]
                mov     rdx, [rsp+48h+arg_48]
                xor     eax, r9d
                and     eax, 0FFFh
                mov     [rcx+30h], rdx
                xor     [rcx+8Ch], eax
                mov     eax, edi
                mov     rcx, [rsp+48h+arg_40]
                and     eax, 1100000h
                mov     [rbx+28h], rcx
                cmp     eax, 1100000h
                jz      loc_14061D7F9

loc_14061D5F1:                          ; CODE XREF: sub_14061D530+2D3↓j
                bt      edi, 14h
                jb      loc_14061D78C
                bt      edi, 19h
                jb      loc_14061D7E4

loc_14061D605:                          ; CODE XREF: sub_14061D530+27C↓j
                                        ; sub_14061D530+2AF↓j
                xor     ebp, ebp
                mov     [rsp+48h+var_18], rbp
                bt      edi, 12h
                jb      loc_14061D731

loc_14061D616:                          ; CODE XREF: sub_14061D530+257↓j
                bt      edi, 18h
                jb      short loc_14061D696
                bt      edi, 1Ch
                jb      loc_1407FE788
                bt      edi, 1Eh
                jb      loc_14061D725

loc_14061D630:                          ; CODE XREF: sub_14061D530+1A9↓j
                                        ; sub_14061D530+1DF↓j ...
                mov     ecx, [rbx+1Ch]
                mov     [rbx+10h], edi
                call    sub_1402320B0
                mov     [rbx+20h], eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_1407FE794
                mov     rcx, [rsp+48h+arg_60]
                test    rcx, rcx
                jz      short loc_14061D67E
                movzx   eax, byte ptr [rcx]
                mov     [rbx+0C0h], al
                mov     eax, [rcx+4]
                mov     [rbx+0C4h], eax
                movzx   eax, cs:word_140CFB000
                mov     edx, [rcx+8]
                cmp     edx, eax
                ja      loc_1407FE79E
                mov     [rbx+0ACh], edx

loc_14061D67E:                          ; CODE XREF: sub_14061D530+122↑j
                xor     eax, eax

loc_14061D680:                          ; CODE XREF: sub_14061D530+22F↓j
                                        ; sub_14061D530+1E1269↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061D696:                          ; CODE XREF: sub_14061D530+EA↑j
                test    sil, 8
                jnz     loc_1407FE75C

loc_14061D6A0:                          ; CODE XREF: sub_14061D530+1E1232↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    byte ptr [rcx+3E0h], 1
                jnz     loc_1407FE767

loc_14061D6BD:                          ; CODE XREF: sub_14061D530+1E123D↓j
                mov     eax, edi
                and     eax, 11000000h
                cmp     eax, 11000000h
                jnz     short loc_14061D6F4
                cmp     dword ptr [rbx+1Ch], 2
                jnz     loc_1407FE794
                btr     edi, 1Ch
                jmp     loc_14061D630
; ---------------------------------------------------------------------------

loc_14061D6DE:                          ; CODE XREF: sub_14061D530+7D↑j
                mov     eax, [rcx]
                or      eax, 1
                mov     [rcx], eax
                test    sil, 4
                jz      loc_14061D5B3
                jmp     loc_1407FE744
; ---------------------------------------------------------------------------

loc_14061D6F4:                          ; CODE XREF: sub_14061D530+199↑j
                or      dword ptr [rbx], 400h
                mov     ecx, [rbx]
                test    cl, 20h
                jnz     loc_14061D7B1

loc_14061D705:                          ; CODE XREF: sub_14061D530+288↓j
                test    cs:dword_140CFC400, 100000h
                jz      loc_14061D630
                jmp     loc_1407FE77D
; ---------------------------------------------------------------------------

loc_14061D71A:                          ; CODE XREF: sub_14061D530+73↑j
                or      dword ptr [rcx], 800h
                jmp     loc_14061D5A9
; ---------------------------------------------------------------------------

loc_14061D725:                          ; CODE XREF: sub_14061D530+FA↑j
                or      dword ptr [rbx+1Ch], 400h
                jmp     loc_14061D630
; ---------------------------------------------------------------------------

loc_14061D731:                          ; CODE XREF: sub_14061D530+E0↑j
                test    rcx, rcx
                jz      loc_1407FE79E
                test    rdx, rdx
                jnz     loc_1407FE79E
                lea     rax, [rsp+48h+var_18]
                mov     edx, 2
                mov     r9d, 70434D4Dh
                mov     [rsp+48h+var_28], rax
                call    sub_1405F5B74
                test    eax, eax
                js      loc_14061D680
                mov     rcx, [rsp+48h+var_18]
                lea     rax, unk_140C50C00
                cmp     [rcx], rax
                jnz     loc_1407FE750
                call    sub_1402073C8

loc_14061D77F:                          ; CODE XREF: sub_14061D530+1E1227↓j
                mov     [rbx+28h], rbp
                btr     edi, 12h
                jmp     loc_14061D616
; ---------------------------------------------------------------------------

loc_14061D78C:                          ; CODE XREF: sub_14061D530+C5↑j
                mov     eax, [rbx]
                bt      edi, 15h
                jb      short loc_14061D7C3

loc_14061D794:                          ; CODE XREF: sub_14061D530+29A↓j
                or      eax, 20h
                btr     edi, 14h
                mov     [rbx], eax
                bt      edi, 16h
                jb      short loc_14061D7CC
                mov     al, 1

loc_14061D7A5:                          ; CODE XREF: sub_14061D530+2C7↓j
                bts     edi, 18h
                mov     [rbx+18h], al
                jmp     loc_14061D605
; ---------------------------------------------------------------------------

loc_14061D7B1:                          ; CODE XREF: sub_14061D530+1CF↑j
                test    byte ptr cs:dword_140CFC400+2, 1
                jz      loc_14061D705
                jmp     loc_1407FE772
; ---------------------------------------------------------------------------

loc_14061D7C3:                          ; CODE XREF: sub_14061D530+262↑j
                btr     edi, 15h
                or      eax, 40h
                jmp     short loc_14061D794
; ---------------------------------------------------------------------------

loc_14061D7CC:                          ; CODE XREF: sub_14061D530+271↑j
                bts     eax, 8
                btr     edi, 16h
                mov     [rbx], eax
                bts     edi, 18h
                mov     al, 0Ch
                mov     [rbx+18h], al
                jmp     loc_14061D605
; ---------------------------------------------------------------------------

loc_14061D7E4:                          ; CODE XREF: sub_14061D530+CF↑j
                or      dword ptr [rbx], 10h
                bt      edi, 16h
                jnb     short loc_14061D808
                btr     edi, 16h
                mov     al, 0Ch

loc_14061D7F3:                          ; CODE XREF: sub_14061D530+2DA↓j
                btr     edi, 19h
                jmp     short loc_14061D7A5
; ---------------------------------------------------------------------------

loc_14061D7F9:                          ; CODE XREF: sub_14061D530+BB↑j
                or      dword ptr [rbx], 200h
                btr     edi, 14h
                jmp     loc_14061D5F1
; ---------------------------------------------------------------------------

loc_14061D808:                          ; CODE XREF: sub_14061D530+2BB↑j
                mov     al, 4
                jmp     short loc_14061D7F3
sub_14061D530   endp

; ---------------------------------------------------------------------------
algn_14061D80C:                         ; DATA XREF: .rdata:000000014004E4CC↑o
                                        ; .pdata:00000001400FD9A4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14061D820   proc near               ; CODE XREF: sub_14061D310+11C↑p
                                        ; DATA XREF: .rdata:000000014004E4F0↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407FE7A8 SIZE 00000237 BYTES

                mov     rax, rsp
                push    rbx
                push    rbp
                push    rsi
                push    r15
                sub     rsp, 58h
                mov     rsi, [rcx+40h]
                mov     rbx, rcx
                xor     r15d, r15d
                mov     [rax+10h], r15
                mov     [rax+8], r15
                mov     rbp, [rsi]
                mov     [rcx+78h], rsi
                mov     edx, [rsi+38h]
                mov     ecx, [rcx+8Ch]
                btr     edx, 13h
                btr     ecx, 1Fh
                mov     [rbx+88h], edx
                test    dword ptr [rbx+10h], 1000000h
                mov     [rbx+8Ch], ecx
                jnz     loc_14061D9F2

loc_14061D86F:                          ; CODE XREF: sub_14061D820+1EE↓j
                                        ; sub_14061D820+1F9↓j ...
                mov     r8d, [rsi+38h]

loc_14061D873:                          ; DATA XREF: .rdata:000000014004E4F0↑o
                                        ; .rdata:000000014004E504↑o ...
                mov     [rsp+78h+arg_10], rdi
                bt      r8d, 1Ah
                jb      loc_14061DA9B
                cmp     [rbx+30h], r15
                jnz     short loc_14061D8A3
                mov     eax, [rbx+1Ch]
                test    al, 44h
                setnz   cl
                test    r8b, 20h
                setz    al
                test    al, cl
                jnz     loc_14061DA2E

loc_14061D8A3:                          ; CODE XREF: sub_14061D820+6A↑j
                                        ; sub_14061D820+212↓j ...
                mov     rdx, [rbx+38h]

loc_14061D8A7:                          ; DATA XREF: .rdata:000000014004E504↑o
                                        ; .rdata:000000014004E518↑o ...
                mov     [rsp+78h+var_28], r14
                xor     r14b, r14b
                test    rdx, rdx
                jz      short loc_14061D8CC
                mov     rax, [rdx+8]
                mov     ecx, [rax+34h]
                test    cl, 10h
                jnz     loc_1407FE7DF
                mov     rcx, rdx
                call    PsDereferenceSiloContext

loc_14061D8CC:                          ; CODE XREF: sub_14061D820+92↑j
                                        ; sub_14061D820+1E0FC2↓j
                mov     eax, [rsi+38h]
                mov     r9d, 80h
                test    al, 20h
                jnz     loc_14061D9C5
                cmp     [rsi+40h], r15
                jz      loc_14061D9C5
                mov     eax, [rsi+118h]
                mov     r10d, r15d
                lea     r9d, [rax+rax*8]
                shl     r9d, 4
                add     r9d, 98h

loc_14061D8FF:                          ; CODE XREF: sub_14061D820+1CD↓j
                movzx   ecx, byte ptr [rbx+48h]
                lea     rax, [rsp+78h+arg_0]
                mov     r8, [rbx+8]
                mov     rdx, cs:MmSectionObjectType
                mov     [rsp+78h+var_30], r15
                mov     [rsp+78h+var_38], rax
                mov     [rsp+78h+var_40], r9d
                movzx   r9d, cl
                mov     dword ptr [rsp+78h+var_48], r10d
                mov     dword ptr [rsp+78h+var_50], 40h ; '@'
                call    sub_14061EDD0
                mov     ebp, eax
                test    eax, eax
                js      loc_14061DA6B
                mov     rdi, [rsp+78h+arg_0]
                movups  xmm0, xmmword ptr [rbx+50h]
                movups  xmmword ptr [rdi], xmm0
                movups  xmm1, xmmword ptr [rbx+60h]
                movups  xmmword ptr [rdi+10h], xmm1
                movups  xmm0, xmmword ptr [rbx+70h]
                movups  xmmword ptr [rdi+20h], xmm0
                movups  xmm1, xmmword ptr [rbx+80h]
                movups  xmmword ptr [rdi+30h], xmm1
                mov     [rdi+18h], r15
                cmp     r14b, 1
                jz      loc_1407FE813

loc_14061D97D:                          ; CODE XREF: sub_14061D820+1E1010↓j
                mov     eax, [rbx]
                test    al, 1
                jnz     short loc_14061D9A4
                or      dword ptr [rdi+38h], 10000h
                mov     eax, [rbx+10h]
                mov     ecx, [rdi+38h]
                bt      eax, 16h
                jb      loc_14061DA5C

loc_14061D99A:                          ; CODE XREF: sub_14061D820+246↓j
                bt      eax, 15h
                jb      loc_1407FE835

loc_14061D9A4:                          ; CODE XREF: sub_14061D820+161↑j
                                        ; sub_14061D820+1E11A4↓j
                mov     [rbx+90h], rdi

loc_14061D9AB:                          ; CODE XREF: sub_14061D820+276↓j
                mov     eax, ebp

loc_14061D9AD:                          ; CODE XREF: sub_14061D820+1E1035↓j
                                        ; sub_14061D820+1E10E2↓j
                mov     r14, [rsp+78h+var_28]

loc_14061D9B2:                          ; CODE XREF: sub_14061D820+1E0F9B↓j
                                        ; sub_14061D820+1E0FBA↓j
                                        ; DATA XREF: ...
                mov     rdi, [rsp+78h+arg_10]
                add     rsp, 58h
                pop     r15
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14061D9C4  db 0CCh                 ; DATA XREF: .pdata:00000001400FD9D4↑o
                                        ; .pdata:00000001400FD9E0↑o
; ---------------------------------------------------------------------------

loc_14061D9C5:                          ; CODE XREF: sub_14061D820+B7↑j
                                        ; sub_14061D820+C1↑j
                                        ; DATA XREF: ...
                mov     eax, [rbp+8]
                lea     r10d, ds:40h[rax*8]
                lea     rax, [rsi+80h]
                nop     word ptr [rax+rax+00000000h]

loc_14061D9E0:                          ; CODE XREF: sub_14061D820+1CB↓j
                mov     rax, [rax+10h]
                add     r9d, 38h ; '8'
                test    rax, rax
                jnz     short loc_14061D9E0
                jmp     loc_14061D8FF
; ---------------------------------------------------------------------------

loc_14061D9F2:                          ; CODE XREF: sub_14061D820+49↑j
                                        ; DATA XREF: .pdata:00000001400FD9EC↑o ...
                mov     r8d, [rbx]
                mov     eax, edx
                bt      r8d, 0Ah
                jb      short loc_14061DA08
                bts     eax, 13h
                mov     [rbx+88h], eax

loc_14061DA08:                          ; CODE XREF: sub_14061D820+1DC↑j
                cmp     byte ptr [rbx+18h], 1
                mov     edx, eax
                ja      loc_14061D86F
                bt      r8d, 13h
                jb      loc_14061D86F
                bts     ecx, 1Fh
                mov     [rbx+8Ch], ecx
                jmp     loc_14061D86F
; ---------------------------------------------------------------------------

loc_14061DA2E:                          ; CODE XREF: sub_14061D820+7D↑j
                                        ; DATA XREF: .pdata:00000001400FD9F8↑o ...
                cmp     [rsi+40h], r15
                jz      loc_14061D8A3
                bts     edx, 1Bh
                mov     [rbx+88h], edx
                lock inc dword ptr [rsi+5Ch]
                mov     rcx, [rbx+38h]
                call    sub_14071407C
                test    al, al
                jnz     loc_14061D8A3
                jmp     loc_1407FE7C0
; ---------------------------------------------------------------------------

loc_14061DA5C:                          ; CODE XREF: sub_14061D820+174↑j
                                        ; DATA XREF: .pdata:00000001400FDA04↑o ...
                bts     ecx, 0Eh
                mov     [rdi+38h], ecx
                mov     eax, [rbx+10h]
                jmp     loc_14061D99A
; ---------------------------------------------------------------------------

loc_14061DA6B:                          ; CODE XREF: sub_14061D820+11F↑j
                test    dword ptr [rbx+88h], 8000000h
                jnz     short loc_14061DAD2
                test    dword ptr [rsi+38h], 4000000h
                jnz     loc_1407FE7E7

loc_14061DA84:                          ; CODE XREF: sub_14061D820+2B6↓j
                                        ; sub_14061D820+1E0FDF↓j
                cmp     r14b, 1
                jz      loc_1407FE804

loc_14061DA8E:                          ; CODE XREF: sub_14061D820+1E0FEE↓j
                mov     rcx, rbx
                call    sub_140722554
                jmp     loc_14061D9AB
; ---------------------------------------------------------------------------

loc_14061DA9B:                          ; CODE XREF: sub_14061D820+60↑j
                                        ; DATA XREF: .pdata:00000001400FDA10↑o ...
                mov     edx, [rbx+0A8h]
                mov     rcx, rsi
                call    sub_1406EB880
                mov     edi, eax
                test    eax, eax
                js      loc_1407FE7A8
                mov     eax, [rbx+0A8h]
                shl     eax, 0Ch
                xor     eax, [rbx+8Ch]
                and     eax, 7FFFF000h
                xor     [rbx+8Ch], eax
                jmp     loc_14061D8A3
; ---------------------------------------------------------------------------

loc_14061DAD2:                          ; CODE XREF: sub_14061D820+255↑j
                                        ; DATA XREF: .pdata:00000001400FDA1C↑o ...
                lock dec dword ptr [rsi+5Ch]
                jmp     short loc_14061DA84
sub_14061D820   endp

; ---------------------------------------------------------------------------
algn_14061DAD8:                         ; DATA XREF: .pdata:00000001400FDA28↑o
                align 20h
; Exported entry 1552. NtDuplicateToken

; =============== S U B R O U T I N E =======================================


                public NtDuplicateToken
NtDuplicateToken proc near              ; DATA XREF: .rdata:000000014004E62C↑o
                                        ; .pdata:00000001400FDA34↑o ...

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A7          = byte ptr -0A7h
var_A6          = byte ptr -0A6h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_50          = byte ptr -50h
var_40          = qword ptr -40h
var_28          = byte ptr -28h
arg_18          = byte ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407FE9E0 SIZE 00000023 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+20h], r9b
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     r14, r8
                mov     edi, edx
                mov     rbx, rcx
                xor     eax, eax
                mov     [r11-80h], rax
                mov     [rsp+0E8h+var_78], eax
                mov     [rsp+0E8h+var_A7], al
                mov     [rsp+0E8h+var_A6], al
                xor     r15d, r15d
                mov     [rsp+0E8h+var_88], r15
                mov     [rsp+0E8h+var_90], r15
                xorps   xmm0, xmm0
                movups  [rsp+0E8h+var_70], xmm0
                movups  xmmword ptr [r11-60h], xmm0
                mov     [rsp+0E8h+var_A8], al
                xorps   xmm1, xmm1
                movups  xmmword ptr [r11-50h], xmm1
                movups  xmmword ptr [r11-40h], xmm1
                mov     rax, gs:188h
                movzx   esi, byte ptr [rax+232h]
                test    sil, sil
                jnz     loc_14061DD1E
                mov     r12, [rsp+0E8h+arg_28]
                mov     r13d, [rsp+0E8h+arg_20]

loc_14061DB6D:                          ; CODE XREF: NtDuplicateToken+26F↓j
                lea     r9, [rsp+0E8h+var_80]
                lea     r8, [rsp+0E8h+var_A7]
                movzx   edx, sil
                mov     rcx, r14
                call    sub_14061DF94
                test    eax, eax
                js      loc_14061DD00
                lea     r8, [rsp+0E8h+var_A6]
                movzx   edx, sil
                mov     rcx, r14
                call    sub_14021B5AC
                test    eax, eax
                js      loc_14061DD00
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+0E8h+var_A0], r15
                lea     rax, [rsp+0E8h+var_90]
                mov     [rsp+0E8h+var_C0], rax
                lea     rax, [rsp+0E8h+var_A0]
                mov     [rsp+0E8h+var_C8], rax
                movzx   r9d, sil
                mov     edx, 2
                mov     rcx, rbx
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_14061DD00
                test    edi, edi
                jz      loc_14061DE28
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rcx, gs:188h
                lea     r8, [rsp+0E8h+var_70]
                call    SeCaptureSubjectContextEx
                mov     rax, [rsp+0E8h+var_60]
                mov     [rsp+0E8h+var_40], rax
                movzx   edx, sil
                lea     rcx, [rsp+0E8h+var_70]
                call    RtlIsSandboxedToken
                test    al, al
                jnz     loc_14061DDA1

loc_14061DC2E:                          ; CODE XREF: NtDuplicateToken+2D4↓j
                mov     r15d, edi

loc_14061DC31:                          ; CODE XREF: NtDuplicateToken+343↓j
                lea     rcx, [rsp+0E8h+var_70]
                call    SeReleaseSubjectContext

loc_14061DC3B:                          ; CODE XREF: NtDuplicateToken+34D↓j
                mov     rdi, [rsp+0E8h+var_A0]
                cmp     [rsp+0E8h+var_A7], 0
                jz      loc_14061DE32
                mov     ecx, [rsp+0E8h+var_7C]

loc_14061DC4F:                          ; CODE XREF: NtDuplicateToken+358↓j
                mov     eax, [rdi+0C0h]
                cmp     eax, 2
                jz      loc_14061DD62

loc_14061DC5E:                          ; CODE XREF: NtDuplicateToken+294↓j
                                        ; NtDuplicateToken+29D↓j ...
                mov     [rsp+0E8h+var_98], 0
                lea     rax, [rsp+0E8h+var_98]
                mov     [rsp+0E8h+var_B0], rax
                mov     byte ptr [rsp+0E8h+var_B8], 0
                mov     byte ptr [rsp+0E8h+var_C0], sil
                mov     dword ptr [rsp+0E8h+var_C8], ecx
                mov     r9d, r13d
                movzx   r8d, [rsp+0E8h+arg_18]
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14061E3A0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061DCE5
                lea     rax, [rsp+0E8h+var_88]
                mov     [rsp+0E8h+var_B8], rax
                xor     eax, eax
                mov     [rsp+0E8h+var_C0], rax
                mov     dword ptr [rsp+0E8h+var_C8], eax
                lea     r9d, [rax+1]
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, [rsp+0E8h+var_98]
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061DCE5
                cmp     [rsp+0E8h+var_A6], 0
                jnz     short loc_14061DCDB
                mov     rcx, [rsp+0E8h+var_98]
                call    sub_1405CF780

loc_14061DCDB:                          ; CODE XREF: NtDuplicateToken+1EF↑j
                mov     rcx, [rsp+0E8h+var_98]
                call    PsDereferenceSiloContext

loc_14061DCE5:                          ; CODE XREF: NtDuplicateToken+1BA↑j
                                        ; NtDuplicateToken+1E8↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                test    ebx, ebx
                js      short loc_14061DCFE

loc_14061DCF1:                          ; DATA XREF: .rdata:000000014004E608↑o
;   __try { // __except at loc_14061DCFC
                mov     rax, [rsp+0E8h+var_88]
                mov     [r12], rax
                jmp     short loc_14061DCFE
;   } // starts at 14061DCF1
; ---------------------------------------------------------------------------

loc_14061DCFC:                          ; DATA XREF: .rdata:000000014004E608↑o
;   __except(1) // owned by 14061DCF1
                jmp     short loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DCFE:                          ; CODE XREF: NtDuplicateToken+20F↑j
                                        ; NtDuplicateToken+21A↑j
                mov     eax, ebx

loc_14061DD00:                          ; CODE XREF: NtDuplicateToken+A5↑j
                                        ; NtDuplicateToken+BE↑j ...
                lea     r11, [rsp+0E8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061DD1E:                          ; CODE XREF: NtDuplicateToken+77↑j
                                        ; DATA XREF: .rdata:000000014004E618↑o
;   __try { // __except at loc_14061DD60
                mov     r13d, [rsp+0E8h+arg_20]
                lea     eax, [r13-1]
                cmp     eax, 1
                ja      short loc_14061DD59
                mov     r12, [rsp+0E8h+arg_28]
                mov     rcx, r12
                mov     rax, 7FFFFFFF0000h
                cmp     r12, rax
                jnb     short loc_14061DD54

loc_14061DD49:                          ; CODE XREF: NtDuplicateToken+277↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     loc_14061DB6D
; ---------------------------------------------------------------------------

loc_14061DD54:                          ; CODE XREF: NtDuplicateToken+267↑j
                mov     rcx, rax
                jmp     short loc_14061DD49
; ---------------------------------------------------------------------------

loc_14061DD59:                          ; CODE XREF: NtDuplicateToken+24D↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14061DD00
;   } // starts at 14061DD1E
; ---------------------------------------------------------------------------

loc_14061DD60:                          ; DATA XREF: .rdata:000000014004E618↑o
;   __except(1) // owned by 14061DD1E
                jmp     short loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DD62:                          ; CODE XREF: NtDuplicateToken+178↑j
                cmp     r13d, 2
                jnz     short loc_14061DD70
                cmp     ecx, [rdi+0C4h]
                jg      short loc_14061DD8F

loc_14061DD70:                          ; CODE XREF: NtDuplicateToken+286↑j
                cmp     r13d, 1
                jnz     loc_14061DC5E
                cmp     eax, 2
                jnz     loc_14061DC5E
                cmp     [rdi+0C4h], eax
                jge     loc_14061DC5E

loc_14061DD8F:                          ; CODE XREF: NtDuplicateToken+28E↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C00000A5h
                jmp     loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DDA1:                          ; CODE XREF: NtDuplicateToken+148↑j
                movzx   edx, sil
                lea     rcx, [rsp+0E8h+var_50]
                call    RtlIsSandboxedToken
                test    al, al
                jz      loc_14061DC2E
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                mov     rcx, [rsp+0E8h+var_60]
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                lea     r8, [rsp+0E8h+var_A8]
                mov     rdx, [rsp+0E8h+var_60]
                mov     rcx, [rsp+0E8h+var_A0]
                call    sub_1406D8F2C
                mov     ecx, eax
                mov     rax, [rsp+0E8h+var_60]
                cmp     [rsp+0E8h+var_A0], rax
                jnz     loc_1407FE9E0

loc_14061DE09:                          ; CODE XREF: NtDuplicateToken+1E0F09↓j
                mov     r15d, edi

loc_14061DE0C:                          ; CODE XREF: NtDuplicateToken+1E0F1E↓j
                mov     rcx, [rax+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_14061DC31
; ---------------------------------------------------------------------------

loc_14061DE28:                          ; CODE XREF: NtDuplicateToken+FF↑j
                mov     r15d, dword ptr [rsp+0E8h+var_90+4]
                jmp     loc_14061DC3B
; ---------------------------------------------------------------------------

loc_14061DE32:                          ; CODE XREF: NtDuplicateToken+165↑j
                mov     ecx, [rdi+0C4h]
                jmp     loc_14061DC4F
; } // starts at 14061DAE0
NtDuplicateToken endp

; ---------------------------------------------------------------------------
byte_14061DE3D  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014004E62C↑o
                                        ; .pdata:00000001400FDA34↑o
; Exported entry 2271. RtlIsSandboxedToken

; =============== S U B R O U T I N E =======================================


