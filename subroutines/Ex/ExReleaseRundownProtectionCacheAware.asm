ExReleaseRundownProtectionCacheAware proc near
                                        ; CODE XREF: MmUnlockPages+8D5↑p
                                        ; DATA XREF: .pdata:00000001400D5AB0↑o
                sub     rsp, 28h
                mov     eax, gs:1A4h
                xor     edx, edx
                div     dword ptr [rcx+14h]
                mov     r9, rcx
                imul    edx, [rcx+10h]
                add     rdx, [rcx]
                prefetchw byte ptr [rdx]

loc_14032580E:                          ; CODE XREF: ExReleaseRundownProtectionCacheAware+33↓j
                                        ; ExReleaseRundownProtectionCacheAware+6A↓j
                mov     r8, [rdx]
                test    r8b, 1
                jnz     short loc_14032582B
                lea     rcx, [r8-2]
                mov     rax, r8
                lock cmpxchg [rdx], rcx
                jnz     short loc_14032580E

loc_140325825:                          ; CODE XREF: ExReleaseRundownProtectionCacheAware+55↓j
                                        ; ExReleaseRundownProtectionCacheAware+65↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032582B:                          ; CODE XREF: ExReleaseRundownProtectionCacheAware+25↑j
                cmp     r8, 1
                jz      short loc_140325857
                and     r8, 0FFFFFFFFFFFFFFFEh
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [r8], rax
                cmp     rax, 1
                jnz     short loc_140325825
                lea     rcx, [r8+8]
                xor     edx, edx
                xor     r8d, r8d
                call    KeSetEvent
                jmp     short loc_140325825
; ---------------------------------------------------------------------------

loc_140325857:                          ; CODE XREF: ExReleaseRundownProtectionCacheAware+3F↑j
                mov     rdx, [r9]
                jmp     short loc_14032580E
ExReleaseRundownProtectionCacheAware endp
