ExRegisterBootDevice proc near          ; DATA XREF: .pdata:00000001400F9E04↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  30h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

                mov     [rsp-28h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xorps   xmm0, xmm0
                xor     r15d, r15d
                mov     r14, rdx
                mov     [rbp+arg_10], r15
                mov     rdi, rcx
                mov     [rsp+70h+var_50], r15
                xor     edx, edx
                lea     rcx, word_140C19220
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ebx, r15d
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                call    KeWaitForSingleObject
                cmp     cs:qword_140C19210, r15
                mov     esi, 200h
                jnz     loc_1405B34F1
                lea     rax, sub_1405B3670
                mov     [rsp+70h+var_40], r15
                xorps   xmm0, xmm0
                mov     [rsp+70h+var_48], rax
                xor     r9d, r9d
                mov     [rsp+70h+var_50], r15
                lea     r8, [rbp+var_30]
                mov     dword ptr [rbp+var_30], 30h ; '0'
                xor     edx, edx
                mov     qword ptr [rbp+var_30+8], r15
                lea     rcx, [rbp+arg_10]
                mov     dword ptr [rbp+var_20+8], esi
                mov     qword ptr [rbp+var_20], r15
                movdqu  [rbp+var_10], xmm0
                call    PsCreateSystemThread
                mov     ebx, eax
                test    eax, eax
                js      short loc_1405B34F1
                mov     rcx, [rbp+arg_10]
                lea     rax, [rbp+arg_18]
                mov     [rsp+70h+var_48], r15
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+70h+var_50], rax
                mov     edx, 1FFFFFh
                mov     [rbp+arg_18], r15
                call    ObReferenceObjectByHandle
                mov     rcx, [rbp+arg_10]
                mov     ebx, eax
                mov     rax, [rbp+arg_18]
                mov     cs:qword_140C19210, rax
                call    ZwClose
                mov     rcx, cs:qword_140C19210
                lea     edx, [r15+1Fh]
                call    KeSetPriorityThread

loc_1405B34F1:                          ; CODE XREF: ExRegisterBootDevice+57↑j
                                        ; ExRegisterBootDevice+A3↑j
                xor     r8d, r8d
                lea     rcx, word_140C19220
                xor     edx, edx
                call    KeSetEvent
                test    ebx, ebx
                js      loc_1405B3649
                cmp     dword ptr [rdi], 1
                jnz     short loc_1405B3521
                cmp     [rdi+8], r15
                jz      short loc_1405B3521
                cmp     [rdi+4], r15d
                jnz     short loc_1405B3521
                cmp     [rdi+18h], r15
                jnz     short loc_1405B3526

loc_1405B3521:                          ; CODE XREF: ExRegisterBootDevice+10D↑j
                                        ; ExRegisterBootDevice+113↑j ...
                mov     ebx, 0C000000Dh

loc_1405B3526:                          ; CODE XREF: ExRegisterBootDevice+11F↑j
                test    ebx, ebx
                js      loc_1405B3649
                mov     edx, 40h ; '@'
                mov     r8d, 504E4442h
                mov     ecx, esi
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     eax, 0C000009Ah
                test    rsi, rsi
                cmovz   ebx, eax
                test    ebx, ebx
                js      loc_1405B3649
                mov     rcx, [rdi+8]
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag
                mov     rcx, [rdi+10h]
                test    rcx, rcx
                jz      short loc_1405B3577
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag

loc_1405B3577:                          ; CODE XREF: ExRegisterBootDevice+16B↑j
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [rdx+40h]
                call    memset
                mov     dword ptr [rsi], 504E4442h
                lea     rcx, qword_140C191F8
                movups  xmm0, xmmword ptr [rdi]
                movups  xmmword ptr [rsi+18h], xmm0
                movups  xmm1, xmmword ptr [rdi+10h]
                movups  xmmword ptr [rsi+28h], xmm1
                movsd   xmm0, qword ptr [rdi+20h]
                movsd   qword ptr [rsi+38h], xmm0
                call    KeAcquireSpinLockRaiseToDpc
                movzx   edi, al
                lea     rdx, qword_140C19200
                mov     rax, cs:qword_140C19208
                lea     rcx, [rsi+8]
                cmp     [rax], rdx
                jz      short loc_1405B35D1
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1405B35D1:                          ; CODE XREF: ExRegisterBootDevice+1C8↑j
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rax], rcx
                mov     cs:qword_140C19208, rcx
                lea     rcx, qword_140C191F8
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B3642
                test    al, 1
                jz      short loc_1405B3642
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B3642
                cmp     dil, 0Fh
                ja      short loc_1405B3642
                cmp     al, 2
                jb      short loc_1405B3642
                mov     r10, gs:20h
                lea     ecx, [rdi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B3642
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B3642:                          ; CODE XREF: ExRegisterBootDevice+1F6↑j
                                        ; ExRegisterBootDevice+1FA↑j ...
                mov     cr8, rdi
                mov     [r14], rsi

loc_1405B3649:                          ; CODE XREF: ExRegisterBootDevice+104↑j
                                        ; ExRegisterBootDevice+128↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+70h+arg_0]
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExRegisterBootDevice endp
