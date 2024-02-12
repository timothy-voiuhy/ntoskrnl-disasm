ExAcquireRundownProtectionCacheAware proc near
                                        ; CODE XREF: sub_140221EA0+54E↑p
                                        ; sub_14053A0E4+514↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     eax, gs:1A4h
                xor     edx, edx
                div     dword ptr [rcx+14h]
                mov     r8, rcx
                imul    edx, [rcx+10h]
                mov     ecx, edx
                add     rcx, [r8]
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                and     rax, 0FFFFFFFFFFFFFFFEh
                lea     rdx, [rax+2]
                lock cmpxchg [rcx], rdx
                jnz     short loc_140322F4A
                mov     al, 1

loc_140322F44:                          ; CODE XREF: ExAcquireRundownProtectionCacheAware+3F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140322F4A:                          ; CODE XREF: ExAcquireRundownProtectionCacheAware+30↑j
                call    ExAcquireRundownProtection
                jmp     short loc_140322F44
ExAcquireRundownProtectionCacheAware endp
