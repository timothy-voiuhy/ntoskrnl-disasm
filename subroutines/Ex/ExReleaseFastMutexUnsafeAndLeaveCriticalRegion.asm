ExReleaseFastMutexUnsafeAndLeaveCriticalRegion proc near
                                        ; DATA XREF: .pdata:00000001400D6380↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     qword ptr [rcx+8], 0
                mov     ecx, 1
                xor     eax, eax
                lock cmpxchg [rbx], ecx
                jnz     short loc_14032DD6D

loc_14032DD2E:                          ; CODE XREF: ExReleaseFastMutexUnsafeAndLeaveCriticalRegion+67↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                add     word ptr [rcx+1E4h], 1
                jz      short loc_14032DD50

loc_14032DD49:                          ; CODE XREF: ExReleaseFastMutexUnsafeAndLeaveCriticalRegion+4A↓j
                                        ; ExReleaseFastMutexUnsafeAndLeaveCriticalRegion+54↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14032DD50:                          ; CODE XREF: ExReleaseFastMutexUnsafeAndLeaveCriticalRegion+37↑j
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jz      short loc_14032DD49
                cmp     word ptr [rcx+1E6h], 0
                jnz     short loc_14032DD49
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14032DD49
; ---------------------------------------------------------------------------

loc_14032DD6D:                          ; CODE XREF: ExReleaseFastMutexUnsafeAndLeaveCriticalRegion+1C↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     short loc_14032DD2E
ExReleaseFastMutexUnsafeAndLeaveCriticalRegion endp
