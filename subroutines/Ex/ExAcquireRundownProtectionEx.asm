ExAcquireRundownProtectionEx proc near  ; CODE XREF: sub_14022B420+56F↑p
                                        ; sub_140270D30+61↑p ...
                mov     r8, rcx
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    al, 1
                jnz     short loc_1402EFDA2
                add     edx, edx

loc_1402EFD8F:                          ; CODE XREF: ExAcquireRundownProtectionEx+20↓j
                lea     rcx, [rdx+rax]
                lock cmpxchg [r8], rcx
                jnz     short loc_1402EFD9E
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EFD9E:                          ; CODE XREF: ExAcquireRundownProtectionEx+18↑j
                test    al, 1
                jz      short loc_1402EFD8F

loc_1402EFDA2:                          ; CODE XREF: ExAcquireRundownProtectionEx+B↑j
                xor     al, al
                retn
ExAcquireRundownProtectionEx endp
