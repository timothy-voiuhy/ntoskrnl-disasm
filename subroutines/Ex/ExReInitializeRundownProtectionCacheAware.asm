ExReInitializeRundownProtectionCacheAware proc near
                                        ; CODE XREF: sub_1406DD1C8+463↓p
                                        ; DATA XREF: .pdata:00000001400D2FF0↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    ExRundownCompletedCacheAware
                mov     ecx, [rbx+14h]
                xor     r8d, r8d
                test    ecx, ecx
                jz      short loc_1402F0F08

loc_1402F0EE8:                          ; CODE XREF: ExReInitializeRundownProtectionCacheAware+36↓j
                xor     edx, edx
                mov     eax, r8d
                div     ecx
                xor     eax, eax
                inc     r8d
                imul    edx, [rbx+10h]
                mov     ecx, edx
                add     rcx, [rbx]
                xchg    rax, [rcx]
                mov     ecx, [rbx+14h]
                cmp     r8d, ecx
                jb      short loc_1402F0EE8

loc_1402F0F08:                          ; CODE XREF: ExReInitializeRundownProtectionCacheAware+16↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReInitializeRundownProtectionCacheAware endp
