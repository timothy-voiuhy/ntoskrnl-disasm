ExReleaseRundownProtectionCacheAwareEx proc near
                                        ; CODE XREF: sub_14024AA80+34E↑p
                                        ; sub_14024F4C0+4E9↑p ...
                sub     rsp, 28h
                mov     eax, gs:1A4h
                mov     r10, rcx
                mov     r11d, edx
                xor     edx, edx
                div     dword ptr [rcx+14h]
                imul    edx, [rcx+10h]
                mov     r8d, edx
                add     r8, [rcx]
                prefetchw byte ptr [r8]

loc_1402F0715:                          ; CODE XREF: ExReleaseRundownProtectionCacheAwareEx+40↓j
                                        ; ExReleaseRundownProtectionCacheAwareEx+77↓j
                mov     r9, [r8]
                test    r9b, 1
                jnz     short loc_1402F0738
                lea     ecx, [r11+r11]
                mov     rdx, r9
                sub     rdx, rcx
                mov     rax, r9
                lock cmpxchg [r8], rdx
                jnz     short loc_1402F0715

loc_1402F0732:                          ; CODE XREF: ExReleaseRundownProtectionCacheAwareEx+62↓j
                                        ; ExReleaseRundownProtectionCacheAwareEx+72↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402F0738:                          ; CODE XREF: ExReleaseRundownProtectionCacheAwareEx+2C↑j
                cmp     r9, 1
                jz      short loc_1402F0764
                and     r9, 0FFFFFFFFFFFFFFFEh
                mov     eax, r11d
                neg     eax
                movsxd  rcx, eax
                lock xadd [r9], rcx
                cmp     rcx, r11
                jnz     short loc_1402F0732
                lea     rcx, [r9+8]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_1402F0732
; ---------------------------------------------------------------------------

loc_1402F0764:                          ; CODE XREF: ExReleaseRundownProtectionCacheAwareEx+4C↑j
                mov     r8, [r10]
                jmp     short loc_1402F0715
ExReleaseRundownProtectionCacheAwareEx endp
