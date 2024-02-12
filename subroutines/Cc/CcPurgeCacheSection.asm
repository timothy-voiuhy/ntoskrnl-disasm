CcPurgeCacheSection proc near           ; CODE XREF: CcSetFileSizesEx+319↑p
                                        ; sub_1402D49E8+D9↑p ...

var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_50          = byte ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = dword ptr  50h
arg_18          = dword ptr  58h

; FUNCTION CHUNK AT 000000014045E800 SIZE 000002F2 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], r9d
                mov     [rax+18h], r8d
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     eax, eax
                mov     [rbp+var_50], 0
                mov     r14, rdx
                mov     [rbp+var_10], rax
                mov     r13, rcx
                mov     [rbp+var_28], rax
                xorps   xmm0, xmm0
                lea     rdx, [rbp+var_20]
                xorps   xmm1, xmm1
                lea     rcx, qword_140CDB640
                xor     r12d, r12d
                and     [rbp+var_48], r12
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_38], xmm1
                call    KeAcquireInStackQueuedSpinLock
                mov     rbx, [r13+8]
                lea     r15d, [r12+1]
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+var_40], rbx
                mov     dil, 0Fh
                test    rbx, rbx
                jnz     loc_1402E1493

loc_1402E13FE:                          ; CODE XREF: CcPurgeCacheSection+16A↓j
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r15d, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_14045E8EA

loc_1402E141A:                          ; CODE XREF: CcPurgeCacheSection+17D571↓j
                                        ; CcPurgeCacheSection+17D57E↓j ...
                mov     cr8, r15
                test    rbx, rbx
                jnz     loc_1402E14EF

loc_1402E1427:                          ; CODE XREF: CcPurgeCacheSection+1C4↓j
                mov     eax, [rbp+arg_18]
                mov     r13d, r12d
                mov     r8d, [rbp+arg_10]
                or      r13d, 2
                mov     rcx, [rbp+arg_0]
                and     eax, 4
                mov     rdx, r14
                cmovz   r13d, r12d
                neg     eax
                lea     rax, [rbp+var_50]
                mov     r9d, r13d
                sbb     r15d, r15d
                mov     [rsp+80h+var_60], rax
                and     r15d, 6
                dec     r15d
                call    sub_1402966E0
                mov     r12b, al
                test    al, al
                jz      loc_1402E15C8

loc_1402E146B:                          ; CODE XREF: CcPurgeCacheSection+274↓j
                test    rbx, rbx
                jnz     loc_1402E1549

loc_1402E1474:                          ; CODE XREF: CcPurgeCacheSection+213↓j
                mov     al, r12b

loc_1402E1477:                          ; CODE XREF: CcPurgeCacheSection+17D4F2↓j
                                        ; CcPurgeCacheSection+17D69B↓j
                mov     rbx, [rsp+80h+arg_8]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402E1493:                          ; CODE XREF: CcPurgeCacheSection+78↑j
                mov     rcx, rbx
                call    sub_140265960
                test    dword ptr [rbx+98h], 2000h
                mov     [rbp+var_48], rax
                jnz     loc_14045E800

loc_1402E14AF:                          ; CODE XREF: CcPurgeCacheSection+17D4FA↓j
                lea     rcx, [rax+80h]
                lea     rdx, [rbp+var_38]
                call    KeAcquireInStackQueuedSpinLock
                add     [rbx+4], r15d
                lea     rcx, [rbp+var_38]
                add     [rbx+218h], r15d
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r15d, byte ptr [rbp+var_28]
                test    eax, eax
                jnz     loc_14045E87F

loc_1402E14E6:                          ; CODE XREF: CcPurgeCacheSection+17D506↓j
                                        ; CcPurgeCacheSection+17D513↓j ...
                mov     cr8, r15
                jmp     loc_1402E13FE
; ---------------------------------------------------------------------------

loc_1402E14EF:                          ; CODE XREF: CcPurgeCacheSection+A1↑j
                mov     rcx, r13
                call    sub_140285080
                mov     r15, [rbp+var_48]
                cmp     r15, [rax+8]
                jnz     loc_14045EA20
                mov     eax, [rbp+arg_18]
                mov     ecx, 1
                test    cl, al
                jnz     loc_14045E955

loc_1402E1515:                          ; CODE XREF: CcPurgeCacheSection+17D600↓j
                xor     r9d, r9d
                mov     rdx, r14
                test    al, 8
                jnz     loc_14045E985
                mov     r8d, [rbp+arg_10]
                mov     [rsp+80h+var_58], r12b
                mov     byte ptr [rsp+80h+var_60], cl
                mov     rcx, rbx
                call    sub_140264FD0

loc_1402E1538:                          ; CODE XREF: CcPurgeCacheSection+17D613↓j
                test    r14, r14
                mov     ecx, 1
                cmovnz  r12d, ecx
                jmp     loc_1402E1427
; ---------------------------------------------------------------------------

loc_1402E1549:                          ; CODE XREF: CcPurgeCacheSection+EE↑j
                cmp     [rbp+arg_10], 0
                jnz     short loc_1402E155B
                test    r14, r14
                jnz     short loc_1402E1598
                and     [rbx+170h], r14

loc_1402E155B:                          ; CODE XREF: CcPurgeCacheSection+1CD↑j
                                        ; CcPurgeCacheSection+222↓j ...
                mov     rcx, [rbp+var_48]
                lea     rdx, [rbp+var_38]
                sub     rcx, 0FFFFFFFFFFFFFF80h
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbx
                call    sub_14026529C
                lea     rcx, [rbp+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_28]
                test    eax, eax
                jnz     loc_14045EA8B

loc_1402E158F:                          ; CODE XREF: CcPurgeCacheSection+17D712↓j
                                        ; CcPurgeCacheSection+17D71F↓j ...
                mov     cr8, rbx
                jmp     loc_1402E1474
; ---------------------------------------------------------------------------

loc_1402E1598:                          ; CODE XREF: CcPurgeCacheSection+1D2↑j
                mov     rax, [r14]
                cmp     rax, [rbx+170h]
                jge     short loc_1402E155B
                add     rax, 3FFFFh
                mov     [rbp+arg_0], rax
                and     dword ptr [rbp+arg_0], 0FFFC0000h
                mov     rax, [rbp+arg_0]
                add     rax, 40000h
                mov     [rbx+170h], rax
                jmp     short loc_1402E155B
; ---------------------------------------------------------------------------

loc_1402E15C8:                          ; CODE XREF: CcPurgeCacheSection+E5↑j
                mov     rsi, [rbp+arg_0]
                mov     edi, [rbp+arg_10]
                mov     ebx, [rbp+arg_18]

loc_1402E15D2:                          ; CODE XREF: CcPurgeCacheSection+17D700↓j
                test    edi, edi
                jnz     short loc_1402E15E9
                mov     rdx, r14
                mov     rcx, rsi
                call    MmCanFileBeTruncated
                test    al, al
                jnz     loc_14045EA3E

loc_1402E15E9:                          ; CODE XREF: CcPurgeCacheSection+254↑j
                                        ; CcPurgeCacheSection+17D6C1↓j ...
                mov     rbx, [rbp+var_40]
                mov     dil, 0Fh
                or      rsi, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402E146B
CcPurgeCacheSection endp
