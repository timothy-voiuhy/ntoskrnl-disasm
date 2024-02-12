ExInitializeRundownProtectionCacheAware proc near
                                        ; DATA XREF: .pdata:0000000140101EA4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     esi, [rdx-18h]
                mov     r8d, 8
                lea     rdi, [rcx+18h]
                mov     rbx, rcx
                cmp     esi, r8d
                jz      short loc_14069B9F9
                call    KeGetRecommendedSharedDataAlignment
                xor     edx, edx
                mov     r8d, eax
                mov     eax, esi
                div     r8d
                lea     edx, [r8-1]
                add     rdi, rdx
                dec     eax
                not     rdx
                and     rdi, rdx

loc_14069B9B2:                          ; CODE XREF: ExInitializeRundownProtectionCacheAware+8E↓j
                mov     [rbx+10h], r8d
                xor     r8d, r8d
                mov     [rbx], rdi
                mov     [rbx+14h], eax
                mov     qword ptr [rbx+8], 0BADCA11h
                test    eax, eax
                jz      short loc_14069B9E8

loc_14069B9CB:                          ; CODE XREF: ExInitializeRundownProtectionCacheAware+76↓j
                xor     edx, edx
                mov     eax, r8d
                div     dword ptr [rbx+14h]
                mov     rax, [rbx]
                inc     r8d
                imul    edx, [rbx+10h]
                and     qword ptr [rdx+rax], 0
                cmp     r8d, [rbx+14h]
                jb      short loc_14069B9CB

loc_14069B9E8:                          ; CODE XREF: ExInitializeRundownProtectionCacheAware+59↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069B9F9:                          ; CODE XREF: ExInitializeRundownProtectionCacheAware+22↑j
                mov     eax, 1
                jmp     short loc_14069B9B2
ExInitializeRundownProtectionCacheAware endp
