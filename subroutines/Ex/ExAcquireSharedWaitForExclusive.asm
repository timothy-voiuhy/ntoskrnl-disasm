ExAcquireSharedWaitForExclusive proc near
                                        ; CODE XREF: sub_1402D43A8:loc_14045C94C↑p
                                        ; sub_1402D43A8+18860D↑p ...

var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = byte ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xorps   xmm1, xmm1
                xor     eax, eax
                test    byte ptr [rcx+1Ah], 1
                xorps   xmm0, xmm0
                mov     sil, dl
                mov     [rbp+var_40], rax
                mov     rbx, rcx
                movups  [rbp+var_50], xmm0
                movups  [rbp+var_38], xmm1
                movups  [rbp+var_28], xmm1
                movups  [rbp+var_18], xmm1
                jz      short loc_1405B50A5
                xor     edi, edi
                lea     edx, [rax+0Eh]
                mov     r8, rcx
                mov     [rsp+80h+var_60], rdi
                mov     ecx, 1C6h
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B50A5:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+48↑j
                mov     r15, gs:188h
                lea     rdx, [rbp+var_50]
                mov     r13d, dword ptr cs:xmmword_140CFC480+4
                add     rcx, 60h ; '`'
                and     r13d, 20000h
                inc     dword ptr gs:86BCh
                call    KeAcquireInStackQueuedSpinLock
                xor     edi, edi

loc_1405B50D3:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+ED↓j
                                        ; ExAcquireSharedWaitForExclusive+13F↓j
                cmp     [rbx+40h], edi
                jz      loc_1405B553D
                movzx   eax, word ptr [rbx+1Ah]
                mov     ecx, 80h
                and     ax, cx
                jz      short loc_1405B50F4
                cmp     [rbx+30h], r15
                jz      loc_1405B519B

loc_1405B50F4:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+A8↑j
                test    ax, ax
                jnz     short loc_1405B515B
                cmp     [rbx+4Ch], edi
                jnz     short loc_1405B515B
                mov     rcx, r15
                call    sub_140270F70
                mov     [rsp+80h+var_58], eax
                lea     r8, [rbp+var_50]
                mov     r9d, 1
                mov     dword ptr [rsp+80h+var_60], 1
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1402484D0
                mov     r8, rax
                test    rax, rax
                jz      short loc_1405B50D3
                mov     ecx, [rax+8]
                mov     eax, ecx
                and     eax, 7
                cmp     [r8], rdi
                jnz     loc_1405B5248
                or      eax, 8
                mov     [r8], r15
                mov     rcx, rbx
                mov     [r8+8], eax
                call    sub_14038F5D4
                mov     r15d, [r8+8]
                jmp     loc_1405B5257
; ---------------------------------------------------------------------------

loc_1405B515B:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+B7↑j
                                        ; ExAcquireSharedWaitForExclusive+BC↑j
                test    sil, sil
                jz      loc_1405B54C2
                test    ax, ax
                jz      loc_1405B5305
                lea     rdx, [rbp+var_50]
                mov     rcx, rbx
                call    sub_140349D5C
                mov     r12, rax
                test    rax, rax
                jz      loc_1405B50D3
                mov     [rax], r15
                mov     eax, [rax+8]
                and     eax, 7
                or      eax, 8
                mov     [r12+8], eax
                jmp     loc_1405B5308
; ---------------------------------------------------------------------------

loc_1405B519B:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+AE↑j
                mov     r15d, [rbx+38h]
                lea     rcx, [rbp+var_50]
                add     r15d, 8
                mov     [rbx+38h], r15d
                shr     r15d, 3
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r12d, byte ptr [rbp+var_40]
                test    eax, eax
                jz      short loc_1405B5213
                test    al, 1
                jz      short loc_1405B5213
                mov     rax, cr8
                mov     sil, 0Fh
                cmp     al, sil
                ja      short loc_1405B5213
                cmp     r12b, sil
                ja      short loc_1405B5213
                cmp     al, 2
                jb      short loc_1405B5213
                mov     r9, gs:20h
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B5213
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B5213:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+181↑j
                                        ; ExAcquireSharedWaitForExclusive+185↑j ...
                mov     cr8, r12
                inc     dword ptr gs:86C0h
                inc     dword ptr gs:8664h
                test    r13d, r13d
                jz      short loc_1405B5240
                mov     r8d, r15d
                mov     ecx, 10031h

loc_1405B5234:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+2C0↓j
                                        ; ExAcquireSharedWaitForExclusive+47D↓j
                mov     r9d, [rbx+44h]
                mov     rdx, rbx
                call    sub_1405AB050

loc_1405B5240:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+1EA↑j
                                        ; ExAcquireSharedWaitForExclusive+2B1↓j ...
                mov     r12b, 1
                jmp     loc_1405B55F0
; ---------------------------------------------------------------------------

loc_1405B5248:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+FA↑j
                lea     r15d, [rcx+8]
                and     r15d, 0FFFFFFF8h
                or      r15d, eax
                mov     [r8+8], r15d

loc_1405B5257:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+116↑j
                lea     rcx, [rbp+var_50]
                shr     r15d, 3
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r12d, byte ptr [rbp+var_40]
                test    eax, eax
                jz      short loc_1405B52C3
                test    al, 1
                jz      short loc_1405B52C3
                mov     rax, cr8
                mov     sil, 0Fh
                cmp     al, sil
                ja      short loc_1405B52C3
                cmp     r12b, sil
                ja      short loc_1405B52C3
                cmp     al, 2
                jb      short loc_1405B52C3
                mov     r9, gs:20h
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B52C3
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B52C3:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+231↑j
                                        ; ExAcquireSharedWaitForExclusive+235↑j ...
                mov     cr8, r12
                cmp     r15d, 1
                mov     ecx, 10041h
                mov     eax, 86C8h
                lea     r10d, [rcx+10h]
                cmovz   r10d, ecx
                lea     ecx, [rax-4]
                cmovz   eax, ecx
                inc     dword ptr gs:[rax]
                inc     dword ptr gs:86C8h
                test    r13d, r13d
                jz      loc_1405B5240
                mov     r8d, 1
                mov     ecx, r10d
                jmp     loc_1405B5234
; ---------------------------------------------------------------------------

loc_1405B5305:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+127↑j
                mov     r12, rdi

loc_1405B5308:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+156↑j
                lea     r8, [rbp+var_38]
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_140361ABC
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     r10b, byte ptr [rbp+var_40]
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     eax, cs:dword_140CFC660
                mov     sil, 0Fh
                mov     [rbp+arg_8], r10b
                test    eax, eax
                jz      short loc_1405B5389
                test    al, 1
                jz      short loc_1405B5389
                mov     rax, cr8
                cmp     al, sil
                ja      short loc_1405B5389
                cmp     r10b, sil
                ja      short loc_1405B5389
                cmp     al, 2
                jb      short loc_1405B5389
                mov     r11, gs:20h
                mov     rdx, r14
                mov     r9, [r11+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B5389
                mov     rcx, r11
                call    sub_1403F2EC4
                mov     r10b, [rbp+arg_8]

loc_1405B5389:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+2F7↑j
                                        ; ExAcquireSharedWaitForExclusive+2FB↑j ...
                movzx   eax, r10b
                mov     cr8, rax
                inc     dword ptr gs:86CCh
                test    r13d, r13d
                jz      short loc_1405B53AE
                xor     r8d, r8d
                mov     rdx, rbx
                mov     ecx, 10044h
                call    sub_1405AB51C

loc_1405B53AE:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+35C↑j
                mov     rcx, rbx
                call    sub_140349198
                lea     r9, sub_140363710
                mov     r8d, 10244h
                lea     rdx, [rbp+var_38]
                mov     rcx, rbx
                call    sub_14023C8E0
                test    r12, r12
                jnz     loc_1405B547D
                lea     rdx, [rbp+var_50]
                lea     rcx, [rbx+60h]
                call    KeAcquireInStackQueuedSpinLock

loc_1405B53E5:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+3C7↓j
                mov     eax, 1
                mov     [rsp+80h+var_58], edi
                mov     r9d, eax
                mov     dword ptr [rsp+80h+var_60], eax
                lea     r8, [rbp+var_50]
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1402484D0
                test    rax, rax
                jz      short loc_1405B53E5
                mov     ecx, [rax+8]
                and     ecx, 7
                mov     [rax], r15
                or      ecx, 8
                mov     [rax+8], ecx
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r12d, byte ptr [rbp+var_40]
                test    eax, eax
                jz      short loc_1405B5479
                test    al, 1
                jz      short loc_1405B5479
                mov     rax, cr8
                cmp     al, sil
                ja      short loc_1405B5479
                cmp     r12b, sil
                ja      short loc_1405B5479
                cmp     al, 2
                jb      short loc_1405B5479
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B5479
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B5479:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+3EE↑j
                                        ; ExAcquireSharedWaitForExclusive+3F2↑j ...
                mov     cr8, r12

loc_1405B547D:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+392↑j
                mov     r8d, edi
                test    r15b, 3
                jnz     short loc_1405B548E
                movzx   r8d, byte ptr [r15+408h]

loc_1405B548E:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+444↑j
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_14030F57C
                inc     dword ptr gs:86C4h
                inc     dword ptr gs:8664h
                test    r13d, r13d
                jz      loc_1405B5240
                mov     r8d, 1
                mov     ecx, 10041h
                jmp     loc_1405B5234
; ---------------------------------------------------------------------------

loc_1405B54C2:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+11E↑j
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_40]
                test    eax, eax
                jz      short loc_1405B5529
                test    al, 1
                jz      short loc_1405B5529
                mov     rax, cr8
                mov     sil, 0Fh
                cmp     al, sil
                ja      short loc_1405B5529
                cmp     bl, sil
                ja      short loc_1405B5529
                cmp     al, 2
                jb      short loc_1405B5529
                mov     r9, gs:20h
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B5529
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B5529:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+497↑j
                                        ; ExAcquireSharedWaitForExclusive+49B↑j ...
                mov     cr8, rbx
                inc     dword ptr gs:86D0h
                mov     r12b, dil
                jmp     loc_1405B55F0
; ---------------------------------------------------------------------------

loc_1405B553D:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+96↑j
                mov     rcx, rbx
                call    sub_14038F5D4
                mov     ecx, [rbx+38h]
                mov     r12b, al
                and     ecx, 7
                mov     [rbx+30h], r15
                or      ecx, 8
                mov     [rbx+38h], ecx
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r15d, byte ptr [rbp+var_40]
                test    eax, eax
                jz      short loc_1405B55C0
                test    al, 1
                jz      short loc_1405B55C0
                mov     rax, cr8
                mov     sil, 0Fh
                cmp     al, sil
                ja      short loc_1405B55C0
                cmp     r15b, sil
                ja      short loc_1405B55C0
                cmp     al, 2
                jb      short loc_1405B55C0
                mov     r9, gs:20h
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rbp+var_40]
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B55C0
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B55C0:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+52E↑j
                                        ; ExAcquireSharedWaitForExclusive+532↑j ...
                mov     cr8, r15
                inc     dword ptr gs:86C4h
                inc     dword ptr gs:8664h
                test    r13d, r13d
                jz      short loc_1405B55F0
                mov     r9d, [rbx+44h]
                mov     r8d, 1
                mov     rdx, rbx
                mov     ecx, 10041h
                call    sub_1405AB050

loc_1405B55F0:                          ; CODE XREF: ExAcquireSharedWaitForExclusive+203↑j
                                        ; ExAcquireSharedWaitForExclusive+4F8↑j ...
                lea     r11, [rsp+80h+var_s0]
                mov     al, r12b
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAcquireSharedWaitForExclusive endp
