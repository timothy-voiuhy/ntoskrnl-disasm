ExWaitForRundownProtectionReleaseCacheAware proc near
                                        ; CODE XREF: sub_14056229C+21F↓p
                                        ; sub_140585104+88↓p ...

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_30], 0
                xor     r9d, r9d
                mov     r8d, [rcx+14h]
                xor     r11d, r11d
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     r10, rcx
                movdqu  [rbp+var_28], xmm0
                movdqu  [rbp+var_18], xmm1
                test    r8d, r8d
                jz      short loc_1402F0E75
                lea     rcx, [rbp+var_30]
                or      rcx, 1

loc_1402F0E48:                          ; CODE XREF: ExWaitForRundownProtectionReleaseCacheAware+5E↓j
                xor     edx, edx
                mov     eax, r11d
                div     r8d
                mov     rax, rcx
                inc     r11d
                imul    edx, [r10+10h]
                mov     r8d, edx
                add     r8, [r10]
                xchg    rax, [r8]
                mov     r8d, [r10+14h]
                add     r9, rax
                cmp     r11d, r8d
                jb      short loc_1402F0E48
                test    r9, r9
                jnz     short loc_1402F0E7C

loc_1402F0E75:                          ; CODE XREF: ExWaitForRundownProtectionReleaseCacheAware+2E↑j
                                        ; ExWaitForRundownProtectionReleaseCacheAware+9C↓j ...
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402F0E7C:                          ; CODE XREF: ExWaitForRundownProtectionReleaseCacheAware+63↑j
                lea     rax, [rbp+var_28+8]
                shr     r9, 1
                and     dword ptr [rbp+var_28+4], 0
                mov     qword ptr [rbp+var_18], rax
                lea     rax, [rbp+var_28+8]
                mov     qword ptr [rbp+var_28+8], rax
                mov     rax, r9
                mov     word ptr [rbp+var_28], 1
                mov     byte ptr [rbp+var_28+2], 6
                lock xadd [rbp+var_30], rax
                neg     r9
                cmp     rax, r9
                jz      short loc_1402F0E75
                and     [rsp+60h+var_40], 0
                lea     rcx, [rbp+var_28]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                jmp     short loc_1402F0E75
ExWaitForRundownProtectionReleaseCacheAware endp
