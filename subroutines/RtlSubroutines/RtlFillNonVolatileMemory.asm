RtlFillNonVolatileMemory proc near      ; DATA XREF: .pdata:00000001400F7EFC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rdx
                mov     rdi, r8
                mov     rbp, rcx
                lea     edx, [rbx+1]
                test    dl, cl
                jnz     short loc_14058D08D
                mov     eax, 0C000000Dh
                jmp     short loc_14058D0EF
; ---------------------------------------------------------------------------

loc_14058D08D:                          ; CODE XREF: RtlFillNonVolatileMemory+24↑j
                mov     ecx, [rsp+28h+arg_20]
                mov     eax, ecx
                and     eax, 3
                cmp     eax, edx
                jz      short loc_14058D0C7
                test    cl, 2
                jz      short loc_14058D0B5
                cmp     rdi, 8
                jb      short loc_14058D0C3
                mov     r8b, r9b
                mov     rdx, rdi
                mov     rcx, rsi
                call    RtlFillMemoryNonTemporal
                jmp     short loc_14058D0ED
; ---------------------------------------------------------------------------

loc_14058D0B5:                          ; CODE XREF: RtlFillNonVolatileMemory+3D↑j
                movzx   edx, r9b
                mov     rcx, rsi
                call    memset
                jmp     short loc_14058D0ED
; ---------------------------------------------------------------------------

loc_14058D0C3:                          ; CODE XREF: RtlFillNonVolatileMemory+43↑j
                cmp     eax, edx
                jnz     short loc_14058D0CE

loc_14058D0C7:                          ; CODE XREF: RtlFillNonVolatileMemory+38↑j
                bt      ecx, 8
                cmovb   ebx, edx

loc_14058D0CE:                          ; CODE XREF: RtlFillNonVolatileMemory+65↑j
                movzx   edx, r9b
                mov     rcx, rsi
                call    memset
                mov     r9d, ebx
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    RtlFlushNonVolatileMemory
                mov     ebx, eax

loc_14058D0ED:                          ; CODE XREF: RtlFillNonVolatileMemory+53↑j
                                        ; RtlFillNonVolatileMemory+61↑j
                mov     eax, ebx

loc_14058D0EF:                          ; CODE XREF: RtlFillNonVolatileMemory+2B↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFillNonVolatileMemory endp
