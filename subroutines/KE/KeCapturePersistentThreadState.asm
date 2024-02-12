KeCapturePersistentThreadState proc near
                                        ; CODE XREF: sub_14088A6D8+C2↓p
                                        ; sub_140984548+173↓p
                                        ; DATA XREF: ...

var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h
arg_20          = qword ptr  40h
arg_28          = qword ptr  48h
arg_30          = qword ptr  50h
arg_38          = qword ptr  58h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r13
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                mov     rbx, [rbp+arg_38]
                xor     eax, eax
                mov     [rbp+var_18], rax
                mov     rsi, r9
                mov     [rbp+var_10], eax
                mov     r15d, r8d
                mov     r14, rdx
                mov     r13, rcx
                test    rbx, rbx
                jz      loc_14050576A
                test    rdx, rdx
                jnz     short loc_14050519F
                mov     r14, gs:188h

loc_14050519F:                          ; CODE XREF: KeCapturePersistentThreadState+44↑j
                cmp     cs:byte_140CF4340, al
                jnz     loc_14050576A
                lea     rcx, [rbp+var_18]
                call    sub_1403C0130
                test    eax, eax
                js      loc_14050576A
                cmp     byte ptr [rbp+var_18], 0
                jnz     loc_14050576A
                lea     rcx, [rbx+8]
                xor     edx, edx
                mov     r8d, 3FFF8h
                call    memset
                mov     r8, rbx
                mov     edx, 800h
                test    bl, 4
                jz      short loc_1405051ED
                mov     edx, 7FFh
                lea     r8, [rbx+4]

loc_1405051ED:                          ; CODE XREF: KeCapturePersistentThreadState+92↑j
                mov     rax, 4547415045474150h
                mov     rcx, rdx
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                mov     eax, 45474150h
                test    dl, 1
                jz      short loc_140505212
                mov     [r8+rdx*4-4], eax

loc_140505212:                          ; CODE XREF: KeCapturePersistentThreadState+BB↑j
                mov     [rbx], eax
                mov     dword ptr [rbx+4], 34365544h
                movzx   eax, word ptr cs:NtBuildNumber
                mov     [rbx+0Ch], eax
                mov     eax, cs:NtBuildNumber
                shr     eax, 1Ch
                mov     [rbx+8], eax
                mov     rax, [r14+0B8h]
                mov     rcx, [rax+28h]
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     [rbx+10h], rcx
                mov     ecx, 0FFFFh
                mov     rax, cs:qword_140CFC510
                mov     [rbx+18h], rax
                lea     rax, PsLoadedModuleList
                mov     [rbx+20h], rax
                lea     rax, qword_140C1E060
                mov     [rbx+28h], rax
                mov     dword ptr [rbx+30h], 8664h
                call    KeQueryActiveProcessorCountEx
                and     qword ptr [rbx+0F08h], 0
                lea     rcx, [rbx+1040h]
                and     dword ptr [rbx+0F18h], 0
                mov     edi, 40000h
                mov     [rbx+34h], eax
                mov     rax, [rbp+arg_20]
                mov     [rbx+48h], rax
                mov     rax, [rbp+arg_28]
                mov     [rbx+50h], rax
                mov     rax, [rbp+arg_30]
                mov     [rbx+58h], rax
                mov     [rbx+38h], r15d
                mov     [rbx+40h], rsi
                mov     dword ptr [rbx+0F00h], 80000003h
                mov     dword ptr [rbx+0F04h], 1
                mov     rax, [r13+0F8h]
                mov     [rbx+0F10h], rax
                mov     [rbx+0FA0h], rdi
                mov     eax, ds:0FFFFF78000000014h
                mov     [rbx+0FA8h], eax
                mov     eax, ds:0FFFFF78000000018h
                mov     [rbx+0FACh], eax
                mov     eax, ds:0FFFFF78000000008h
                mov     [rbx+1030h], eax
                mov     eax, ds:0FFFFF7800000000Ch
                mov     [rbx+1034h], eax
                mov     dword ptr [rbx+0F98h], 4
                mov     dword ptr [rbx+1038h], 82h
                mov     dword ptr [rbx+1050h], 18h
                call    RtlGetNtProductType
                mov     eax, ds:0FFFFF780000002D0h
                mov     edx, 9
                mov     [rbx+1044h], eax
                mov     esi, 2080h
                mov     eax, ds:0FFFFF780000002C4h
                mov     rcx, r13
                mov     [rbx+1054h], eax
                and     dword ptr [rbx+2044h], 0
                mov     eax, cs:dword_140C4C078
                and     dword ptr [rbx+2040h], 0
                mov     [rbx+2000h], eax
                lea     rax, [rbx+348h]
                mov     [rbx+2004h], edi
                lea     edi, [rdx+77h]
                mov     dword ptr [rbx+2010h], 0F00h
                or      dword ptr [rbx+1038h], 1
                mov     dword ptr [rbx+200Ch], 348h

loc_1405053AF:                          ; CODE XREF: KeCapturePersistentThreadState+2A7↓j
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr [rax], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rax+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rax+30h], xmm1
                movups  xmm0, xmmword ptr [rcx+40h]
                movups  xmmword ptr [rax+40h], xmm0
                movups  xmm1, xmmword ptr [rcx+50h]
                movups  xmmword ptr [rax+50h], xmm1
                movups  xmm0, xmmword ptr [rcx+60h]
                movups  xmmword ptr [rax+60h], xmm0
                add     rax, rdi
                movups  xmm1, xmmword ptr [rcx+70h]
                add     rcx, rdi
                movups  xmmword ptr [rax-10h], xmm1
                sub     rdx, 1
                jnz     short loc_1405053AF
                movups  xmm0, xmmword ptr [rcx]
                mov     edi, 380h
                lea     rdx, [rbp+arg_38]
                mov     dword ptr [rbp+arg_38], edi
                movups  xmmword ptr [rax], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rax+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rax+30h], xmm1
                movups  xmm0, xmmword ptr [rcx+40h]
                mov     ecx, esi
                movups  xmmword ptr [rax+40h], xmm0
                call    sub_140504C78
                test    al, al
                jz      short loc_140505469
                bts     dword ptr [rbx+1038h], 0Ah
                lea     rax, unk_140C00B20
                mov     [rbx+80h], rax
                lea     rcx, [rbx+2080h]
                mov     [rbx+2070h], esi
                mov     [rbx+2074h], edi
                call    sub_1405108A8
                mov     esi, 2400h

loc_140505469:                          ; CODE XREF: KeCapturePersistentThreadState+2E4↑j
                lea     rdx, [rbp+arg_38]
                mov     dword ptr [rbp+arg_38], 0AF00h
                mov     ecx, esi
                call    sub_140504C78
                test    al, al
                jz      short loc_1405054A6
                or      dword ptr [rbx+1038h], 4
                mov     [rbx+201Ch], esi
                mov     rdx, gs:20h
                mov     r8d, dword ptr [rbp+arg_38]
                mov     ecx, esi
                add     rcx, rbx
                call    memmove
                add     esi, dword ptr [rbp+arg_38]

loc_1405054A6:                          ; CODE XREF: KeCapturePersistentThreadState+32D↑j
                lea     ecx, [rsi+7]
                mov     dword ptr [rbp+arg_38], 0A40h
                and     ecx, 0FFFFFFF8h
                lea     rdx, [rbp+arg_38]
                call    sub_140504C78
                test    al, al
                jz      short loc_1405054E5
                or      dword ptr [rbx+1038h], 8
                mov     r8d, dword ptr [rbp+arg_38]
                mov     esi, ecx
                add     rcx, rbx
                mov     [rbx+2020h], esi
                mov     rdx, [r14+0B8h]
                call    memmove
                add     esi, dword ptr [rbp+arg_38]

loc_1405054E5:                          ; CODE XREF: KeCapturePersistentThreadState+36E↑j
                lea     ecx, [rsi+7]
                mov     dword ptr [rbp+arg_38], 898h
                and     ecx, 0FFFFFFF8h
                lea     rdx, [rbp+arg_38]
                call    sub_140504C78
                test    al, al
                jz      short loc_140505520
                or      dword ptr [rbx+1038h], 10h
                mov     rdx, r14
                mov     r8d, dword ptr [rbp+arg_38]
                mov     esi, ecx
                add     rcx, rbx
                mov     [rbx+2024h], esi
                call    memmove
                add     esi, dword ptr [rbp+arg_38]

loc_140505520:                          ; CODE XREF: KeCapturePersistentThreadState+3AD↑j
                test    dword ptr [r14+78h], 20000h
                mov     r15d, 100h
                jz      loc_1405055BC
                mov     rcx, [r14+30h]
                mov     rax, [r14+38h]
                mov     r14, [r13+98h]
                cmp     rcx, r14
                ja      short loc_14050554D
                cmp     r14, rax
                jb      short loc_140505555

loc_14050554D:                          ; CODE XREF: KeCapturePersistentThreadState+3F6↑j
                mov     r14, rcx
                cmp     rax, rcx
                jbe     short loc_14050555A

loc_140505555:                          ; CODE XREF: KeCapturePersistentThreadState+3FB↑j
                sub     eax, r14d
                jmp     short loc_14050555C
; ---------------------------------------------------------------------------

loc_14050555A:                          ; CODE XREF: KeCapturePersistentThreadState+403↑j
                xor     eax, eax

loc_14050555C:                          ; CODE XREF: KeCapturePersistentThreadState+408↑j
                mov     ecx, 7FFFh
                cmp     eax, ecx
                cmovnb  eax, ecx
                mov     rcx, r14
                mov     edx, eax
                call    sub_140504348
                mov     dword ptr [rbp+arg_38], eax
                test    eax, eax
                jz      short loc_1405055BC
                lea     rdx, [rbp+arg_38]
                mov     ecx, esi
                call    sub_140504C78
                test    al, al
                jnz     short loc_14050558D
                or      [rbx+2044h], r15d

loc_14050558D:                          ; CODE XREF: KeCapturePersistentThreadState+434↑j
                or      dword ptr [rbx+1038h], 20h
                mov     rdx, r14
                mov     edi, dword ptr [rbp+arg_38]
                mov     ecx, esi
                mov     r8d, edi
                add     rcx, rbx
                mov     [rbx+2028h], esi
                mov     [rbx+202Ch], edi
                mov     [rbx+2048h], r14
                call    memmove
                add     esi, edi

loc_1405055BC:                          ; CODE XREF: KeCapturePersistentThreadState+3DE↑j
                                        ; KeCapturePersistentThreadState+425↑j
                mov     rax, cr8
                cmp     al, 2
                jnb     loc_1405056BC
                mov     rax, gs:188h
                lea     edi, [rsi+7]
                and     [rbp+var_20], 0
                and     edi, 0FFFFFFF8h
                and     [rbp+var_1C], 0
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                lea     r8, [rbp+var_1C]
                xor     ecx, ecx
                lea     rdx, [rbp+var_20]
                call    sub_14050256C
                test    eax, eax
                js      loc_1405056AB
                mov     r14d, [rbp+var_20]
                lea     eax, [r14+r14*8]
                shl     eax, 4
                mov     dword ptr [rbp+arg_38], eax
                test    eax, eax
                jz      loc_1405056A4
                lea     rdx, [rbp+arg_38]
                mov     ecx, edi
                call    sub_140504C78
                test    al, al
                jz      short loc_1405056A4
                mov     r15d, dword ptr [rbp+arg_38]
                lea     ecx, [r14+r14*2]
                mov     edx, [rbp+var_1C]
                add     r15d, edi
                add     edx, 7
                lea     edx, [rdx+rcx*2]
                and     edx, 0FFFFFFF8h
                mov     dword ptr [rbp+arg_38], edx
                jz      short loc_14050569A
                lea     rdx, [rbp+arg_38]
                mov     ecx, r15d
                call    sub_140504C78
                test    al, al
                jz      short loc_14050569A
                mov     r9d, r15d
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140504EFC
                test    eax, eax
                js      short loc_1405056AB
                or      dword ptr [rbx+1038h], 40h
                mov     eax, dword ptr [rbp+arg_38]
                mov     [rbx+2030h], edi
                mov     [rbx+2034h], r14d
                mov     [rbx+2038h], r15d
                lea     esi, [r15+rax]
                mov     [rbx+203Ch], eax
                jmp     short loc_1405056AB
; ---------------------------------------------------------------------------

loc_14050569A:                          ; CODE XREF: KeCapturePersistentThreadState+4FA↑j
                                        ; KeCapturePersistentThreadState+50A↑j
                bts     dword ptr [rbx+2044h], 8
                jmp     short loc_1405056AB
; ---------------------------------------------------------------------------

loc_1405056A4:                          ; CODE XREF: KeCapturePersistentThreadState+4CB↑j
                                        ; KeCapturePersistentThreadState+4DE↑j
                or      [rbx+2044h], r15d

loc_1405056AB:                          ; CODE XREF: KeCapturePersistentThreadState+4B5↑j
                                        ; KeCapturePersistentThreadState+51E↑j ...
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_1405056BC:                          ; CODE XREF: KeCapturePersistentThreadState+472↑j
                lea     r14d, [rsi+7]
                mov     dword ptr [rbp+arg_38], 1010h
                and     r14d, 0FFFFFFF8h
                lea     rdx, [rbp+arg_38]
                mov     ecx, r14d
                call    sub_140504C78
                mov     ecx, dword ptr [rbp+arg_38]
                cmp     ecx, 10h
                jbe     short loc_14050574F
                lea     edi, [rcx-10h]
                mov     rcx, [r13+0F8h]
                mov     edx, edi
                shr     edx, 1
                call    sub_140504390
                test    eax, eax
                jz      short loc_14050574F
                mov     rsi, [r13+0F8h]
                mov     edx, edi
                mov     eax, eax
                sub     rsi, rax
                inc     rsi
                mov     rcx, rsi
                call    sub_140504348
                test    eax, eax
                jz      short loc_14050574F
                bts     dword ptr [rbx+1038h], 0Bh
                lea     ecx, [r14+17h]
                mov     [rbx+2078h], r14d
                and     ecx, 0FFFFFFF8h
                mov     dword ptr [rbx+207Ch], 1
                mov     rdx, rsi
                mov     [r14+rbx+8], ecx
                add     rcx, rbx
                mov     r8d, eax
                mov     [r14+rbx], rsi
                mov     [r14+rbx+0Ch], eax
                call    memmove

loc_14050574F:                          ; CODE XREF: KeCapturePersistentThreadState+58D↑j
                                        ; KeCapturePersistentThreadState+5A4↑j ...
                mov     dword ptr [rbx+2008h], 3FFFCh
                mov     eax, 40000h
                mov     dword ptr [rbx+3FFFCh], 44475254h
                jmp     short loc_14050576C
; ---------------------------------------------------------------------------

loc_14050576A:                          ; CODE XREF: KeCapturePersistentThreadState+3B↑j
                                        ; KeCapturePersistentThreadState+55↑j ...
                xor     eax, eax

loc_14050576C:                          ; CODE XREF: KeCapturePersistentThreadState+618↑j
                mov     rbx, [rsp+40h+arg_0]
                mov     rsi, [rsp+40h+arg_8]
                mov     rdi, [rsp+40h+arg_10]
                mov     r13, [rsp+40h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeCapturePersistentThreadState endp
