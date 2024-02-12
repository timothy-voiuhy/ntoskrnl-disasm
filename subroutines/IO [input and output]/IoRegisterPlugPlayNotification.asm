IoRegisterPlugPlayNotification proc near
                                        ; CODE XREF: sub_140790618+FF↓p
                                        ; sub_1407AE308+55↓p ...

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = dword ptr -38h
var_34          = xmmword ptr -34h
var_24          = xmmword ptr -24h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_20          = qword ptr  60h
arg_28          = qword ptr  68h
arg_30          = qword ptr  70h

; FUNCTION CHUNK AT 00000001408354A8 SIZE 0000009E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     r15, [rbp+arg_30]
                mov     r12, r9
                mov     r14, [rbp+arg_20]
                mov     r13, r8
                mov     dword ptr [rbp+var_50], edx
                mov     ebx, ecx
                xor     r9d, r9d
                mov     dword ptr [rsp+80h+var_60], 4E706E50h
                and     qword ptr [r15], 0
                xor     edx, edx
                mov     r8, cs:IoDriverObjectType
                mov     rcx, r12
                call    ObReferenceObjectByPointerWithTag
                test    eax, eax
                js      loc_140723160
                sub     ebx, 1
                jz      loc_140723331
                sub     ebx, 1
                jz      loc_140723188
                sub     ebx, 1
                jnz     loc_1408354A8
                and     [rbp+var_50], 0
                lea     rdx, [rbp+var_50]
                mov     rcx, r13
                call    sub_1402F1B38
                mov     ebx, eax
                test    eax, eax
                js      loc_1407233CC
                mov     edx, 70h ; 'p'
                mov     r8d, 43706E50h
                lea     ecx, [rdx-6Fh]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408354D0
                mov     r9, [rbp+arg_28]
                lea     rax, dword_140C454E0
                mov     [rsp+80h+var_58], rax
                mov     r8, r14
                mov     edx, 3
                mov     [rsp+80h+var_60], r12
                mov     rcx, rdi
                call    sub_1407234E4
                mov     ebx, eax
                mov     rcx, rdi
                test    eax, eax
                js      loc_1408354E7
                mov     rsi, [rbp+var_50]
                mov     [rdi+50h], r13
                mov     rax, [rsi+20h]
                mov     [rdi+58h], rax
                call    sub_1407233E4
                mov     ebx, eax
                test    eax, eax
                js      loc_1408354FB
                lea     rcx, dword_140C454E0
                call    KeAcquireGuardedMutex
                lea     rax, [rsi+1D8h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_14083553F
                mov     [rdi], rax
                lea     rcx, dword_140C454E0
                mov     [rdi+8], rdx
                mov     [rdx], rdi
                mov     [rax+8], rdi

loc_14072314E:                          ; CODE XREF: IoRegisterPlugPlayNotification+3B7↓j
                call    KeReleaseGuardedMutex

loc_140723153:                          ; CODE XREF: IoRegisterPlugPlayNotification+24B↓j
                                        ; IoRegisterPlugPlayNotification+31C↓j
                mov     [r15], rdi

loc_140723156:                          ; CODE XREF: IoRegisterPlugPlayNotification+1124BB↓j
                                        ; IoRegisterPlugPlayNotification+112502↓j ...
                test    ebx, ebx
                js      loc_1407233CC

loc_14072315E:                          ; CODE XREF: IoRegisterPlugPlayNotification+3C9↓j
                mov     eax, ebx

loc_140723160:                          ; CODE XREF: IoRegisterPlugPlayNotification+5D↑j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_0]
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140723188:                          ; CODE XREF: IoRegisterPlugPlayNotification+6F↑j
                mov     edx, 60h ; '`'
                mov     r8d, 44706E50h
                lea     esi, [rdx-5Fh]
                mov     ecx, esi
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408354DD
                mov     r9, [rbp+arg_28]
                lea     rax, dword_140C45520
                mov     [rsp+80h+var_58], rax
                lea     edx, [rsi+1]
                mov     r8, r14
                mov     [rsp+80h+var_60], r12
                mov     rcx, rdi
                call    sub_1407234E4
                mov     ebx, eax
                test    eax, eax
                js      loc_1407233CC
                movups  xmm0, xmmword ptr [r13+0]
                lea     r14, [rdi+50h]
                mov     rcx, rdi
                movdqu  xmmword ptr [r14], xmm0
                call    sub_1407233E4
                xor     r13d, r13d
                mov     ebx, eax
                test    eax, eax
                js      loc_140835517
                lea     rcx, dword_140C45520
                call    KeAcquireGuardedMutex
                mov     ecx, [rdi+5Ch]
                mov     eax, 4EC4EC4Fh
                add     ecx, [rdi+58h]
                add     ecx, [rdi+54h]
                add     ecx, [r14]
                mul     ecx
                shr     edx, 2
                imul    eax, edx, 0Dh
                lea     rdx, unk_140D2F2C0
                sub     ecx, eax
                mov     eax, ecx
                shl     rax, 4
                add     rax, rdx
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_14083553F
                mov     [rdi], rax
                lea     rcx, dword_140C45520
                mov     [rdi+8], rdx
                mov     [rdx], rdi
                mov     [rax+8], rdi
                call    KeReleaseGuardedMutex
                test    byte ptr [rbp+var_50], sil
                jz      loc_140723153
                movups  xmm1, xmmword ptr [r14]
                mov     [rsp+80h+var_58], r13
                lea     rax, [rbp+var_50]
                xorps   xmm0, xmm0
                mov     [rbp+var_50], r13
                movups  [rbp+var_48], xmm0
                xor     r9d, r9d
                xor     r8d, r8d
                movups  xmm0, cs:xmmword_14000B3A8
                xor     edx, edx
                mov     [rbp+var_14], r13d
                mov     rcx, r14
                mov     [rbp+var_38], 300001h
                movdqu  [rbp+var_34], xmm0
                mov     [rsp+80h+var_60], rax
                movdqu  [rbp+var_24], xmm1
                call    sub_1405DE8EC
                mov     ebx, eax
                test    eax, eax
                js      loc_1407233CC
                mov     r14, [rbp+var_50]
                mov     rsi, r14
                cmp     [r14], r13w
                jz      short loc_140723322

loc_1407232C1:                          ; CODE XREF: IoRegisterPlugPlayNotification+310↓j
                mov     rdx, rsi
                mov     dword ptr [rbp+var_50], r13d
                lea     rcx, [rbp+var_48]
                call    RtlInitUnicodeString
                lea     rax, [rbp+var_48]
                mov     [rbp+var_10], rax
                call    PsGetCurrentServerSilo
                mov     rcx, rax
                call    PsGetServerSiloServiceSessionId
                cmp     [rdi+14h], eax
                jz      short loc_1407232FD
                mov     rcx, [rbp+var_10]
                call    sub_14073DBA8
                cmp     eax, 0FFFFFFFFh
                jnz     loc_14083551E

loc_1407232FD:                          ; CODE XREF: IoRegisterPlugPlayNotification+2D9↑j
                                        ; IoRegisterPlugPlayNotification+112517↓j
                lea     r8, [rbp+var_50]
                mov     rcx, rdi
                lea     rdx, [rbp+var_38]
                call    sub_14069C80C

loc_14072330D:                          ; CODE XREF: IoRegisterPlugPlayNotification+112511↓j
                movzx   eax, word ptr [rbp+var_48]
                shr     rax, 1
                lea     rsi, [rsi+rax*2]
                add     rsi, 2
                cmp     [rsi], r13w
                jnz     short loc_1407232C1

loc_140723322:                          ; CODE XREF: IoRegisterPlugPlayNotification+2AF↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_140723153
; ---------------------------------------------------------------------------

loc_140723331:                          ; CODE XREF: IoRegisterPlugPlayNotification+66↑j
                mov     edx, 50h ; 'P'
                mov     r8d, 39706E50h
                lea     esi, [rdx-4Fh]
                mov     ecx, esi
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408354DD
                mov     r9, [rbp+arg_28]
                lea     rax, dword_140C454A0
                mov     [rsp+80h+var_58], rax
                mov     r8, r14
                mov     edx, esi
                mov     [rsp+80h+var_60], r12
                mov     rcx, rdi
                call    sub_1407234E4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407233CC
                mov     rcx, rdi
                call    sub_1407233E4
                mov     ebx, eax
                test    eax, eax
                js      loc_14083552C
                lea     rcx, dword_140C454A0
                call    KeAcquireGuardedMutex
                mov     rax, cs:qword_140D2EB58
                lea     rdx, qword_140D2EB50
                cmp     [rax], rdx
                jnz     loc_14083553F
                mov     [rdi], rdx
                lea     rcx, dword_140C454A0
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140D2EB58, rdi
                jmp     loc_14072314E
; ---------------------------------------------------------------------------

loc_1407233CC:                          ; CODE XREF: IoRegisterPlugPlayNotification+93↑j
                                        ; IoRegisterPlugPlayNotification+148↑j ...
                mov     edx, 4E706E50h
                mov     rcx, r12
                call    ObfDereferenceObjectWithTag
                jmp     loc_14072315E
; } // starts at 140723010
IoRegisterPlugPlayNotification endp
