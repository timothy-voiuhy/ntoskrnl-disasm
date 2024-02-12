ExRundownCompletedCacheAware proc near  ; CODE XREF: ExReInitializeRundownProtectionCacheAware+9↑p
                                        ; DATA XREF: .pdata:00000001400D2FFC↑o
                mov     r9, rcx
                xor     r8d, r8d
                mov     ecx, [rcx+14h]
                test    ecx, ecx
                jz      short locret_1402F0F52

loc_1402F0F2D:                          ; CODE XREF: ExRundownCompletedCacheAware+30↓j
                xor     edx, edx
                mov     eax, r8d
                div     ecx
                mov     eax, 1
                inc     r8d
                imul    edx, [r9+10h]
                mov     ecx, edx
                add     rcx, [r9]
                xchg    rax, [rcx]
                mov     ecx, [r9+14h]
                cmp     r8d, ecx
                jb      short loc_1402F0F2D

locret_1402F0F52:                       ; CODE XREF: ExRundownCompletedCacheAware+B↑j
                retn
ExRundownCompletedCacheAware endp
