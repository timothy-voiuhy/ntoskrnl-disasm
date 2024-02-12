RtlFlushNonVolatileMemory proc near     ; CODE XREF: RtlFillNonVolatileMemory+86↓p
                                        ; RtlFlushNonVolatileMemoryRanges+4D↓p ...
                sub     rsp, 28h
                mov     rax, r8
                mov     r10, rcx
                test    cl, 1
                jnz     short loc_140585FB6
                mov     eax, 0C000000Dh
                jmp     short loc_140586018
; ---------------------------------------------------------------------------

loc_140585FB6:                          ; CODE XREF: RtlFlushNonVolatileMemory+D↑j
                test    r10b, 2
                jz      short loc_140586016
                mov     r8, cs:qword_140C0F478
                mov     rcx, r8
                neg     rcx
                and     rcx, rdx
                add     rdx, rax
                mov     eax, cs:dword_140C12BA8
                cmp     eax, 2
                jz      short loc_140585FE8
                cmp     eax, 3
                jnz     short loc_140586003
                jmp     short loc_140585FF6
; ---------------------------------------------------------------------------

loc_140585FE1:                          ; CODE XREF: RtlFlushNonVolatileMemory+4B↓j
                clwb    byte ptr [rcx]
                add     rcx, r8

loc_140585FE8:                          ; CODE XREF: RtlFlushNonVolatileMemory+38↑j
                cmp     rcx, rdx
                jb      short loc_140585FE1
                jmp     short loc_140586008
; ---------------------------------------------------------------------------

loc_140585FEF:                          ; CODE XREF: RtlFlushNonVolatileMemory+59↓j
                clflushopt byte ptr [rcx]
                add     rcx, r8

loc_140585FF6:                          ; CODE XREF: RtlFlushNonVolatileMemory+3F↑j
                cmp     rcx, rdx
                jb      short loc_140585FEF
                jmp     short loc_140586008
; ---------------------------------------------------------------------------

loc_140585FFD:                          ; CODE XREF: RtlFlushNonVolatileMemory+66↓j
                clflush byte ptr [rcx]
                add     rcx, r8

loc_140586003:                          ; CODE XREF: RtlFlushNonVolatileMemory+3D↑j
                cmp     rcx, rdx
                jb      short loc_140585FFD

loc_140586008:                          ; CODE XREF: RtlFlushNonVolatileMemory+4D↑j
                                        ; RtlFlushNonVolatileMemory+5B↑j
                test    r9b, 1
                jnz     short loc_140586016
                mov     rcx, r10
                call    RtlDrainNonVolatileFlush

loc_140586016:                          ; CODE XREF: RtlFlushNonVolatileMemory+1A↑j
                                        ; RtlFlushNonVolatileMemory+6C↑j
                xor     eax, eax

loc_140586018:                          ; CODE XREF: RtlFlushNonVolatileMemory+14↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFlushNonVolatileMemory endp
