RtlCheckTokenMembershipEx proc near     ; CODE XREF: RtlCheckTokenMembership+A↑p
                                        ; sub_14071F5C0+10F488↓p ...

var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = byte ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_260         = dword ptr -260h
var_25C         = dword ptr -25Ch
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = xmmword ptr -240h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = xmmword ptr -210h
var_200         = xmmword ptr -200h
var_1F0         = xmmword ptr -1F0h
var_1E0         = xmmword ptr -1E0h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1B0         = byte ptr -1B0h
var_160         = byte ptr -160h
var_70          = byte ptr -70h
var_38          = qword ptr -38h

; FUNCTION CHUNK AT 000000014044F6E4 SIZE 00000048 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-190h]
                sub     rsp, 290h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1C0h+var_38], rax
                xor     edi, edi
                mov     r15d, r8d
                mov     r13, rdx
                mov     [rsp+2C0h+var_25C], edi
                mov     r14, rcx
                mov     [rsp+2C0h+var_260], edi
                xor     edx, edx
                lea     rcx, [rbp+1C0h+var_1B0]
                lea     r8d, [rdi+44h]
                mov     r12, r9
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+1C0h+var_160]
                mov     r8d, 0ECh
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+2C0h+var_258], rdi
                xor     eax, eax
                mov     [rsp+2C0h+var_248], rdi
                mov     [rbp+1C0h+var_1C8], rax
                mov     [rbp+1C0h+var_1C0], eax
                mov     [rbp+1C0h+var_1D0], rax
                mov     [r12], dil
                movups  [rbp+1C0h+var_220], xmm0
                movups  [rbp+1C0h+var_210], xmm0
                movups  [rbp+1C0h+var_200], xmm0
                movups  [rbp+1C0h+var_1F0], xmm0
                movups  [rbp+1C0h+var_1E0], xmm0
                movups  [rbp+1C0h+var_240], xmm0
                movups  [rbp+1C0h+var_230], xmm0
                test    r15d, 0FFFFFFFCh
                jnz     loc_14044F6E4
                lea     ecx, [rdi+2]
                mov     sil, dil
                test    r14, r14
                jnz     loc_1402B4B73
                lea     rcx, [rbp+1C0h+var_240]
                call    SeCaptureSubjectContext
                mov     sil, 1

loc_1402B49E4:                          ; CODE XREF: RtlCheckTokenMembershipEx+2B5↓j
                mov     edx, 1
                lea     rcx, [rbp+1C0h+var_1F0]
                call    RtlCreateSecurityDescriptor
                xor     r8d, r8d
                lea     rcx, [rbp+1C0h+var_1F0]
                mov     rdx, r13
                call    RtlSetOwnerSecurityDescriptor
                xor     r8d, r8d
                lea     rcx, [rbp+1C0h+var_1F0]
                mov     rdx, r13
                call    RtlSetGroupSecurityDescriptor
                mov     edx, 0ECh
                lea     rcx, [rbp+1C0h+var_160]
                mov     r8d, 2
                call    RtlCreateAcl
                mov     r8d, 1
                lea     rcx, [rbp+1C0h+var_160]
                mov     r9, r13
                lea     r13d, [r8+1]
                mov     edx, r13d
                call    RtlAddAccessAllowedAce
                test    r15b, 3
                jz      short loc_1402B4A75
                mov     r9d, r13d
                mov     dword ptr [rsp+2C0h+var_2A0], 1
                mov     r8d, r13d
                lea     rdx, qword_14000AA08
                lea     rcx, [rbp+1C0h+var_1B0]
                call    RtlInitializeSidEx
                lea     r9, [rbp+1C0h+var_1B0]
                mov     edx, r13d
                lea     r8d, [r13-1]
                lea     rcx, [rbp+1C0h+var_160]
                call    RtlAddAccessAllowedAce

loc_1402B4A75:                          ; CODE XREF: RtlCheckTokenMembershipEx+121↑j
                test    r13b, r15b
                jnz     loc_14044F6EE

loc_1402B4A7E:                          ; CODE XREF: RtlCheckTokenMembershipEx+19AE00↓j
                xor     r9d, r9d
                lea     r8, [rbp+1C0h+var_160]
                mov     dl, 1
                lea     rcx, [rbp+1C0h+var_1F0]
                call    RtlSetDaclSecurityDescriptor
                lea     rax, [rbp+1C0h+var_70]
                mov     [rsp+2C0h+var_248], rax
                test    sil, sil
                jz      loc_1402B4BDA

loc_1402B4AA5:                          ; CODE XREF: RtlCheckTokenMembershipEx+316↓j
                mov     rax, gs:188h
                lea     rcx, [rsp+2C0h+var_260]
                mov     [rsp+2C0h+var_270], rcx
                lea     r8, [rbp+1C0h+var_240]
                lea     rcx, [rsp+2C0h+var_25C]
                xor     r9d, r9d
                mov     [rsp+2C0h+var_278], rcx
                xor     edx, edx
                mov     al, [rax+232h]
                lea     rcx, [rbp+1C0h+var_1F0]
                mov     [rsp+2C0h+var_280], al
                lea     rax, qword_14000AA10
                mov     [rsp+2C0h+var_288], rax
                lea     rax, [rsp+2C0h+var_248]
                mov     [rsp+2C0h+var_290], rax
                mov     dword ptr [rsp+2C0h+var_298], edi
                mov     dword ptr [rsp+2C0h+var_2A0], 1
                call    SeAccessCheckWithHint
                test    sil, sil
                jz      loc_1402B4C3B

loc_1402B4B09:                          ; CODE XREF: RtlCheckTokenMembershipEx+329↓j
                mov     eax, [rsp+2C0h+var_260]
                test    eax, eax
                jnz     short loc_1402B4B67
                cmp     [rsp+2C0h+var_25C], 1
                jnz     loc_14044F725
                mov     byte ptr [r12], 1

loc_1402B4B21:                          ; CODE XREF: RtlCheckTokenMembershipEx+24C↓j
                                        ; RtlCheckTokenMembershipEx+19AE07↓j
                test    sil, sil
                jz      short loc_1402B4B34
                lea     rcx, [rbp+1C0h+var_240]
                call    SeReleaseSubjectContext

loc_1402B4B2F:                          ; CODE XREF: RtlCheckTokenMembershipEx+2AA↓j
                test    r14, r14
                jnz     short loc_1402B4B42

loc_1402B4B34:                          ; CODE XREF: RtlCheckTokenMembershipEx+204↑j
                                        ; RtlCheckTokenMembershipEx+30E↓j
                mov     rcx, [rsp+2C0h+var_258]
                test    rcx, rcx
                jnz     loc_1402B4C4E

loc_1402B4B42:                          ; CODE XREF: RtlCheckTokenMembershipEx+212↑j
                                        ; RtlCheckTokenMembershipEx+333↓j
                mov     eax, edi

loc_1402B4B44:                          ; CODE XREF: RtlCheckTokenMembershipEx+19ADC9↓j
                mov     rcx, [rbp+1C0h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 290h
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

loc_1402B4B67:                          ; CODE XREF: RtlCheckTokenMembershipEx+1EF↑j
                cmp     eax, 0C0000022h
                jz      short loc_1402B4B21
                jmp     loc_14044F725
; ---------------------------------------------------------------------------

loc_1402B4B73:                          ; CODE XREF: RtlCheckTokenMembershipEx+B2↑j
                lea     rax, [rbp+1C0h+var_1C8]
                mov     dword ptr [rbp+1C0h+var_1C8+4], ecx
                mov     qword ptr [rbp+1C0h+var_200+8], rax
                lea     r8, [rbp+1C0h+var_220]
                xor     r9d, r9d
                mov     dword ptr [rbp+1C0h+var_220], 30h ; '0'
                lea     rax, [rsp+2C0h+var_258]
                mov     qword ptr [rbp+1C0h+var_220+8], rdi
                mov     [rsp+2C0h+var_298], rax
                mov     dword ptr [rsp+2C0h+var_2A0], ecx
                mov     rcx, r14
                lea     edx, [r9+8]
                mov     dword ptr [rbp+1C0h+var_210+8], 200h
                mov     qword ptr [rbp+1C0h+var_210], rdi
                mov     qword ptr [rbp+1C0h+var_200], rdi
                mov     dword ptr [rbp+1C0h+var_1C8], 0Ch
                mov     word ptr [rbp+1C0h+var_1C0], 1
                call    ZwDuplicateToken
                mov     edi, eax
                test    eax, eax
                js      loc_1402B4B2F
                xor     edi, edi
                mov     r14d, edi
                jmp     loc_1402B49E4
; ---------------------------------------------------------------------------

loc_1402B4BDA:                          ; CODE XREF: RtlCheckTokenMembershipEx+17F↑j
                mov     rax, gs:188h
                xor     r9d, r9d
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+2C0h+var_298], rdi
                mov     [rsp+2C0h+var_250], rdi
                mov     rcx, [rax+0B8h]
                lea     edx, [r9+8]
                mov     rax, [rcx+440h]
                mov     rcx, [rsp+2C0h+var_258]
                mov     qword ptr [rbp+1C0h+var_230+8], rax
                lea     rax, [rsp+2C0h+var_250]
                mov     [rsp+2C0h+var_2A0], rax
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rax, [rsp+2C0h+var_250]
                mov     qword ptr [rbp+1C0h+var_230], rax
                test    edi, edi
                js      loc_1402B4B34
                xor     edi, edi
                jmp     loc_1402B4AA5
; ---------------------------------------------------------------------------

loc_1402B4C3B:                          ; CODE XREF: RtlCheckTokenMembershipEx+1E3↑j
                mov     rcx, qword ptr [rbp+1C0h+var_230]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                jmp     loc_1402B4B09
; ---------------------------------------------------------------------------

loc_1402B4C4E:                          ; CODE XREF: RtlCheckTokenMembershipEx+21C↑j
                call    ZwClose
                jmp     loc_1402B4B42
; } // starts at 1402B4920
RtlCheckTokenMembershipEx endp
