HvlQueryStartedProcessors proc near     ; CODE XREF: sub_140214FB8+210A63↑p
                                        ; DATA XREF: .pdata:00000001400F16C8↑o
                mov     eax, cs:dword_140CFC40C
                mov     r9, rdx
                mov     r8, rcx
                test    al, 2
                jnz     short loc_1404F2627
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F2627:                          ; CODE XREF: HvlQueryStartedProcessors+E↑j
                xor     edx, edx
                test    r8, r8
                jnz     short loc_1404F2635
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F2635:                          ; CODE XREF: HvlQueryStartedProcessors+1C↑j
                test    r9, r9
                jz      short loc_1404F2681
                mov     ecx, [rcx]
                mov     r10d, ecx
                cmp     cs:dword_140CFC4BC, ecx
                cmovb   r10d, cs:dword_140CFC4BC
                test    r10d, r10d
                jz      short loc_1404F2672
                lea     rcx, dword_140D042E4
                mov     edx, r10d

loc_1404F265C:                          ; CODE XREF: HvlQueryStartedProcessors+5D↓j
                mov     eax, [rcx]
                lea     rcx, [rcx+78h]
                mov     [r9], eax
                lea     r9, [r9+4]
                sub     rdx, 1
                jnz     short loc_1404F265C
                mov     ecx, [r8]

loc_1404F2672:                          ; CODE XREF: HvlQueryStartedProcessors+40↑j
                cmp     ecx, cs:dword_140CFC4BC
                sbb     eax, eax
                and     eax, 0C0000023h
                mov     edx, eax

loc_1404F2681:                          ; CODE XREF: HvlQueryStartedProcessors+28↑j
                mov     ecx, cs:dword_140CFC4BC
                mov     eax, edx
                mov     [r8], ecx
                retn
HvlQueryStartedProcessors endp
