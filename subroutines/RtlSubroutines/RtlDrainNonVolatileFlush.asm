RtlDrainNonVolatileFlush proc near      ; CODE XREF: RtlFlushNonVolatileMemory+71↓p
                                        ; RtlFlushNonVolatileMemoryRanges+65↓p
                                        ; DATA XREF: ...
                test    cl, 1
                jnz     short loc_140585F7C
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140585F7C:                          ; CODE XREF: RtlDrainNonVolatileFlush+3↑j
                cmp     cs:byte_140CF9F26, 0
                jz      short loc_140585F8D
                test    cl, 2
                jz      short loc_140585F8D
                sfence

loc_140585F8D:                          ; CODE XREF: RtlDrainNonVolatileFlush+13↑j
                                        ; RtlDrainNonVolatileFlush+18↑j
                xor     eax, eax
                retn
RtlDrainNonVolatileFlush endp
