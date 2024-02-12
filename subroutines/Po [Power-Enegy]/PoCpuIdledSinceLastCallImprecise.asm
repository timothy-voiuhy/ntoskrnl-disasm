PoCpuIdledSinceLastCallImprecise proc near
                                        ; DATA XREF: .pdata:00000001400DA2B0↑o
                mov     eax, ecx
                lea     r8, qword_140CFDCC0
                mov     cl, 1
                mov     r8, [r8+rax*8]
                test    r8, r8
                jz      short loc_14036C232
                mov     rax, [r8+8018h]
                mov     r9, [rdx]
                mov     [rdx], rax
                mov     rax, [r8+8020h]
                test    rax, rax
                jnz     short loc_14036C232
                cmp     [rdx], r9
                jbe     short loc_14036C236

loc_14036C232:                          ; CODE XREF: PoCpuIdledSinceLastCallImprecise+12↑j
                                        ; PoCpuIdledSinceLastCallImprecise+2B↑j ...
                mov     al, cl
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036C236:                          ; CODE XREF: PoCpuIdledSinceLastCallImprecise+30↑j
                xor     cl, cl
                jmp     short loc_14036C232
PoCpuIdledSinceLastCallImprecise endp
