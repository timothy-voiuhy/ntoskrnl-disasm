RtlWriteNonVolatileMemory proc near     ; CODE XREF: sub_1402841E0+738↑p
                                        ; DATA XREF: .pdata:00000001400F7F2C↑o

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
                mov     rdi, r9
                mov     rbp, rcx
                mov     r9, r8
                lea     edx, [rbx+1]
                test    dl, cl
                jnz     short loc_14058D210
                mov     eax, 0C000000Dh
                jmp     short loc_14058D276
; ---------------------------------------------------------------------------

loc_14058D210:                          ; CODE XREF: RtlWriteNonVolatileMemory+27↑j
                mov     ecx, [rsp+28h+arg_20]
                mov     eax, ecx
                and     eax, 3
                cmp     eax, edx
                jz      short loc_14058D24C
                test    cl, 2
                jz      short loc_14058D238
                cmp     rdi, 8
                jb      short loc_14058D248
                mov     r8, rdi
                mov     rdx, r9
                mov     rcx, rsi
                call    RtlCopyMemoryNonTemporal
                jmp     short loc_14058D274
; ---------------------------------------------------------------------------

loc_14058D238:                          ; CODE XREF: RtlWriteNonVolatileMemory+40↑j
                mov     r8, rdi
                mov     rdx, r9
                mov     rcx, rsi
                call    memmove
                jmp     short loc_14058D274
; ---------------------------------------------------------------------------

loc_14058D248:                          ; CODE XREF: RtlWriteNonVolatileMemory+46↑j
                cmp     eax, edx
                jnz     short loc_14058D253

loc_14058D24C:                          ; CODE XREF: RtlWriteNonVolatileMemory+3B↑j
                bt      ecx, 8
                cmovb   ebx, edx

loc_14058D253:                          ; CODE XREF: RtlWriteNonVolatileMemory+6A↑j
                mov     r8, rdi
                mov     rdx, r9
                mov     rcx, rsi
                call    memmove
                mov     r9d, ebx
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    RtlFlushNonVolatileMemory
                mov     ebx, eax

loc_14058D274:                          ; CODE XREF: RtlWriteNonVolatileMemory+56↑j
                                        ; RtlWriteNonVolatileMemory+66↑j
                mov     eax, ebx

loc_14058D276:                          ; CODE XREF: RtlWriteNonVolatileMemory+2E↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlWriteNonVolatileMemory endp
