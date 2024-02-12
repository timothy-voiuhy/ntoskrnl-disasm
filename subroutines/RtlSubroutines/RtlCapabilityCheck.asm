RtlCapabilityCheck proc near            ; CODE XREF: sub_140568E68+75↑p
                                        ; RtlCapabilityCheckForSingleSessionSku+41↓p ...

var_140         = dword ptr -140h
var_138         = qword ptr -138h
var_130         = byte ptr -130h
var_12F         = byte ptr -12Fh
var_12E         = byte ptr -12Eh
var_12D         = byte ptr -12Dh
var_12C         = byte ptr -12Ch
var_12B         = byte ptr -12Bh
var_128         = dword ptr -128h
var_124         = word ptr -124h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = xmmword ptr -100h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = byte ptr -0B0h
var_A0          = byte ptr -0A0h
var_70          = byte ptr -70h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                xor     ebx, ebx
                mov     [rsp+160h+var_124], 500h
                xorps   xmm1, xmm1
                mov     [rsp+160h+var_118], ebx
                xorps   xmm0, xmm0
                mov     [rsp+160h+var_110], rbx
                mov     r15, rcx
                mov     [rsp+160h+var_12B], bl
                xor     ecx, ecx
                mov     [rsp+160h+var_128], ebx
                movups  [rsp+160h+var_100], xmm0
                mov     [rsp+160h+var_12C], bl
                mov     dil, bl
                movups  [rsp+160h+var_F0], xmm1
                mov     [rsp+160h+var_130], bl
                mov     sil, bl
                movups  [rbp+60h+var_E0], xmm1
                mov     [rsp+160h+var_12F], bl
                mov     r12b, bl
                movups  [rbp+60h+var_D0], xmm1
                mov     [rsp+160h+var_12E], bl
                mov     r14, r8
                movups  [rbp+60h+var_C0], xmm0
                mov     [rsp+160h+var_12D], bl
                mov     r13, rdx
                call    KeQueryPerformanceCounter
                mov     [rsp+160h+var_108], rax
                test    r13, r13
                jz      loc_140914E88
                test    r14, r14
                jz      loc_140914E88
                lea     r8, [rbp+60h+var_70]
                mov     [r14], bl
                lea     rdx, [rbp+60h+var_A0]
                mov     rcx, r13
                call    RtlDeriveCapabilitySidsFromName
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                call    RtlIsMultiSessionSku
                mov     ebx, 2
                test    al, al
                jz      loc_140914D37
                lea     rdx, aRegistryMachin_116 ; "\\Registry\\Machine\\Software\\Microsof"...
                lea     rcx, [rsp+160h+var_100]
                call    RtlInitUnicodeString
                and     qword ptr [rsp+160h+var_F0+8], 0
                lea     rax, [rsp+160h+var_100]
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+60h+var_E0], rax
                lea     r8, [rsp+160h+var_F0]
                mov     dword ptr [rsp+160h+var_F0], 30h ; '0'
                mov     edx, 80000000h
                mov     dword ptr [rbp+60h+var_E0+8], 240h
                lea     rcx, [rsp+160h+var_110]
                movdqu  [rbp+60h+var_D0], xmm0
                call    ZwOpenKey
                test    eax, eax
                js      loc_140914D37
                mov     rcx, [rsp+160h+var_110]
                lea     rax, [rsp+160h+var_118]
                mov     [rsp+160h+var_138], rax
                lea     r9, [rbp+60h+var_C0]
                mov     r8d, ebx
                mov     [rsp+160h+var_140], 10h
                mov     rdx, r13
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_140914D37
                mov     r8b, 1
                mov     [rsp+160h+var_12B], 1
                lea     rdx, [rsp+160h+var_128]
                lea     rcx, [rbp+60h+var_B0]
                call    RtlInitializeSid
                xor     edx, edx
                lea     rcx, [rbp+60h+var_B0]
                call    RtlSubAuthoritySid
                lea     r8, [rsp+160h+var_12F]
                mov     [rsp+160h+var_120], rax
                lea     rdx, [rbp+60h+var_B0]
                mov     rcx, r15
                mov     dword ptr [rax], 12h
                call    RtlCheckTokenMembership
                mov     sil, [rsp+160h+var_12F]
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                test    sil, sil
                jnz     loc_140914E48
                mov     r8b, 2
                lea     rdx, [rsp+160h+var_128]
                lea     rcx, [rbp+60h+var_B0]
                call    RtlInitializeSid
                mov     rax, [rsp+160h+var_120]
                lea     rcx, [rbp+60h+var_B0]
                mov     edx, 1
                mov     dword ptr [rax], 20h ; ' '
                call    RtlSubAuthoritySid
                lea     r8, [rsp+160h+var_130]
                mov     rcx, r15
                lea     rdx, [rbp+60h+var_B0]
                mov     dword ptr [rax], 220h
                call    RtlCheckTokenMembership
                mov     dil, [rsp+160h+var_130]
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                test    dil, dil
                jnz     loc_140914E48
                jmp     loc_140914E66
; ---------------------------------------------------------------------------

loc_140914D37:                          ; CODE XREF: RtlCapabilityCheck+CD↑j
                                        ; RtlCapabilityCheck+120↑j ...
                lea     r9, [rsp+160h+var_12D]
                mov     r8d, ebx
                lea     rdx, [rbp+60h+var_A0]
                mov     rcx, r15
                call    RtlCheckTokenMembershipEx
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                cmp     [rsp+160h+var_12D], sil
                jnz     loc_140914E48
                mov     r8b, 1
                lea     rdx, [rsp+160h+var_128]
                lea     rcx, [rbp+60h+var_B0]
                call    RtlInitializeSid
                xor     edx, edx
                lea     rcx, [rbp+60h+var_B0]
                call    RtlSubAuthoritySid
                lea     r8, [rsp+160h+var_12F]
                mov     [rsp+160h+var_120], rax
                lea     rdx, [rbp+60h+var_B0]
                mov     rcx, r15
                mov     dword ptr [rax], 12h
                call    RtlCheckTokenMembership
                mov     sil, [rsp+160h+var_12F]
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                test    sil, sil
                jnz     loc_140914E48
                mov     r8b, 2
                lea     rdx, [rsp+160h+var_128]
                lea     rcx, [rbp+60h+var_B0]
                call    RtlInitializeSid
                mov     rax, [rsp+160h+var_120]
                lea     rcx, [rbp+60h+var_B0]
                mov     edx, 1
                mov     dword ptr [rax], 20h ; ' '
                call    RtlSubAuthoritySid
                lea     r8, [rsp+160h+var_130]
                mov     rcx, r15
                lea     rdx, [rbp+60h+var_B0]
                mov     dword ptr [rax], 220h
                call    RtlCheckTokenMembership
                mov     dil, [rsp+160h+var_130]
                mov     ebx, eax
                test    eax, eax
                js      loc_140914E8D
                test    dil, dil
                jnz     short loc_140914E48
                mov     r8b, 1
                lea     rdx, [rsp+160h+var_128]
                lea     rcx, [rbp+60h+var_B0]
                call    RtlInitializeSid
                mov     rax, [rsp+160h+var_120]
                lea     r9, [rsp+160h+var_12E]
                mov     r8d, 2
                lea     rdx, [rbp+60h+var_B0]
                mov     rcx, r15
                mov     dword ptr [rax], 4
                call    RtlCheckTokenMembershipEx
                mov     r12b, [rsp+160h+var_12E]
                mov     ebx, eax
                test    eax, eax
                js      short loc_140914E8D
                test    r12b, r12b
                jz      short loc_140914E66

loc_140914E48:                          ; CODE XREF: RtlCapabilityCheck+1A3↑j
                                        ; RtlCapabilityCheck+1FC↑j ...
                lea     r8, [rsp+160h+var_12C]
                mov     rcx, r15
                lea     rdx, [rbp+60h+var_70]
                call    RtlCheckTokenCapability
                mov     ebx, eax
                test    eax, eax
                js      short loc_140914E8D
                mov     al, [rsp+160h+var_12C]
                mov     [r14], al

loc_140914E66:                          ; CODE XREF: RtlCapabilityCheck+202↑j
                                        ; RtlCapabilityCheck+316↑j
                cmp     byte ptr [r14], 0
                jz      short loc_140914E8D
                test    dil, dil
                jnz     short loc_140914E8D
                test    sil, sil
                jnz     short loc_140914E8D
                mov     r8, r14
                mov     rdx, r13
                mov     rcx, r15
                call    sub_14091544C
                mov     ebx, eax
                jmp     short loc_140914E8D
; ---------------------------------------------------------------------------

loc_140914E88:                          ; CODE XREF: RtlCapabilityCheck+95↑j
                                        ; RtlCapabilityCheck+9E↑j
                mov     ebx, 0C000000Dh

loc_140914E8D:                          ; CODE XREF: RtlCapabilityCheck+BB↑j
                                        ; RtlCapabilityCheck+19A↑j ...
                mov     rcx, [rsp+160h+var_110]
                test    rcx, rcx
                jz      short loc_140914E9C
                call    ZwClose

loc_140914E9C:                          ; CODE XREF: RtlCapabilityCheck+365↑j
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     [rsp+160h+var_120], rax
                test    sil, sil
                jnz     short loc_140914EDA
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     short loc_140914EDA
                mov     al, [r14]
                lea     rdx, [rsp+160h+var_120]
                mov     byte ptr [rsp+160h+var_138], al
                lea     rcx, [rsp+160h+var_108]
                mov     al, [rsp+160h+var_12B]
                mov     r9b, r12b
                mov     r8b, dil
                mov     byte ptr [rsp+160h+var_140], al
                call    sub_14091CD44

loc_140914EDA:                          ; CODE XREF: RtlCapabilityCheck+37B↑j
                                        ; RtlCapabilityCheck+384↑j
                mov     eax, ebx
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
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
; } // starts at 140914B30
RtlCapabilityCheck endp
