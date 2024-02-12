ExAcquireRundownProtectionCacheAwareEx proc near
                                        ; CODE XREF: sub_14024AA80+322↑p
                                        ; sub_14024F4C0+462↑p ...
                mov     eax, gs:1A4h
                mov     r9d, edx
                xor     edx, edx
                div     dword ptr [rcx+14h]
                imul    edx, [rcx+10h]
                mov     r8d, edx
                add     r8, [rcx]
                prefetchw byte ptr [r8]
                mov     rax, [r8]
                test    al, 1
                jnz     short loc_1402EFD68
                lea     edx, [r9+r9]

loc_1402EFD59:                          ; CODE XREF: ExAcquireRundownProtectionCacheAwareEx+3E↓j
                lea     rcx, [rdx+rax]
                lock cmpxchg [r8], rcx
                jnz     short loc_1402EFD6C
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402EFD68:                          ; CODE XREF: ExAcquireRundownProtectionCacheAwareEx+23↑j
                                        ; ExAcquireRundownProtectionCacheAwareEx+40↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EFD6C:                          ; CODE XREF: ExAcquireRundownProtectionCacheAwareEx+32↑j
                test    al, 1
                jz      short loc_1402EFD59
                jmp     short loc_1402EFD68
ExAcquireRundownProtectionCacheAwareEx endp
