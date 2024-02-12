RtlFlushNonVolatileMemoryRanges proc near
                                        ; DATA XREF: .pdata:00000001400F7F08↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, r9d
                mov     rdi, r8
                mov     r14, rdx
                mov     rbx, rcx
                test    cl, 1
                jnz     short loc_14058D141
                mov     eax, 0C000000Dh
                jmp     short loc_14058D17C
; ---------------------------------------------------------------------------

loc_14058D141:                          ; CODE XREF: RtlFlushNonVolatileMemoryRanges+28↑j
                test    bl, 2
                jz      short loc_14058D17A
                test    r8, r8
                jz      short loc_14058D16C
                mov     esi, ebp
                or      esi, 1

loc_14058D150:                          ; CODE XREF: RtlFlushNonVolatileMemoryRanges+5A↓j
                mov     r8, [r14+8]
                mov     r9d, esi
                mov     rdx, [r14]
                mov     rcx, rbx
                call    RtlFlushNonVolatileMemory
                lea     r14, [r14+10h]
                sub     rdi, 1
                jnz     short loc_14058D150

loc_14058D16C:                          ; CODE XREF: RtlFlushNonVolatileMemoryRanges+39↑j
                test    bpl, 1
                jnz     short loc_14058D17A
                mov     rcx, rbx
                call    RtlDrainNonVolatileFlush

loc_14058D17A:                          ; CODE XREF: RtlFlushNonVolatileMemoryRanges+34↑j
                                        ; RtlFlushNonVolatileMemoryRanges+60↑j
                xor     eax, eax

loc_14058D17C:                          ; CODE XREF: RtlFlushNonVolatileMemoryRanges+2F↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFlushNonVolatileMemoryRanges endp
