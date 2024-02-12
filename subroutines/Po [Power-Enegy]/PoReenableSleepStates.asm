PoReenableSleepStates proc near         ; DATA XREF: .pdata:000000014011F85C↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rcx, dword_140C24A60
                call    ExAcquireFastMutex
                mov     rdx, [rbx]
                cmp     [rdx+8], rbx
                jnz     short loc_1408E53CE
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1408E53CE
                mov     [rax], rdx
                lea     rcx, dword_140C24A60
                mov     [rdx+8], rax
                call    KeReleaseGuardedMutex
                mov     edx, 64536F50h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1408E53CE:                          ; CODE XREF: PoReenableSleepStates+1C↑j
                                        ; PoReenableSleepStates+25↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
PoReenableSleepStates endp
