CcIsThereDirtyDataEx proc near          ; DATA XREF: .pdata:00000001400F0F00↑o

var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                mov     rdi, rdx
                mov     rbx, rcx
                mov     [rbp+var_8], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rax
                xorps   xmm1, xmm1
                lea     rdx, [rbp+var_18]
                lea     rcx, qword_140CDB640
                xor     sil, sil
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_30], xmm1
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, cs:qword_140C486F0
                lea     rdx, qword_140C486F0
                cmp     rax, rdx
                jz      short loc_1404EAEA5
                mov     rcx, [rbx+8]

loc_1404EAE3F:                          ; CODE XREF: CcIsThereDirtyDataEx+71↓j
                lea     rbx, [rax-10h]
                cmp     [rbx+8], rcx
                jz      short loc_1404EAE53
                mov     rax, [rax]
                xor     ebx, ebx
                cmp     rax, rdx
                jnz     short loc_1404EAE3F

loc_1404EAE53:                          ; CODE XREF: CcIsThereDirtyDataEx+67↑j
                test    rbx, rbx
                jz      short loc_1404EAEA5
                mov     rax, cs:qword_140CFC760
                lea     rcx, [rbp+var_30]
                mov     rdx, [rax+8]
                and     qword ptr [rbp+var_30], 0
                sub     rdx, 0FFFFFFFFFFFFFF80h
                mov     qword ptr [rbp+var_30+8], rdx
                call    sub_14024B3F0
                cmp     qword ptr [rbx+20h], 0
                jnz     short loc_1404EAE89
                cmp     dword ptr [rbx+0C4h], 0
                jz      short loc_1404EAE9C

loc_1404EAE89:                          ; CODE XREF: CcIsThereDirtyDataEx+9E↑j
                test    rdi, rdi
                jz      short loc_1404EAE99
                mov     eax, [rbx+0C4h]
                add     eax, [rbx+20h]
                mov     [rdi], eax

loc_1404EAE99:                          ; CODE XREF: CcIsThereDirtyDataEx+AC↑j
                mov     sil, 1

loc_1404EAE9C:                          ; CODE XREF: CcIsThereDirtyDataEx+A7↑j
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_1404EAEA5:                          ; CODE XREF: CcIsThereDirtyDataEx+59↑j
                                        ; CcIsThereDirtyDataEx+76↑j
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_8]
                test    eax, eax
                jz      short loc_1404EAF08
                test    al, 1
                jz      short loc_1404EAF08
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EAF08
                cmp     bl, 0Fh
                ja      short loc_1404EAF08
                cmp     al, 2
                jb      short loc_1404EAF08
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rbp+var_8]
                inc     ecx
                shl     rdx, cl
                movzx   edx, dx
                not     edx
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_1404EAF08
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404EAF08:                          ; CODE XREF: CcIsThereDirtyDataEx+DA↑j
                                        ; CcIsThereDirtyDataEx+DE↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+50h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcIsThereDirtyDataEx endp
