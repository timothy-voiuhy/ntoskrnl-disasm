HvlQueryActiveProcessors proc near      ; CODE XREF: sub_14060DA00+2864↓p
                                        ; DATA XREF: .pdata:00000001400F1674↑o
                mov     eax, cs:dword_140CFC40C
                mov     r9, rdx
                mov     r8, rcx
                test    al, 2
                jnz     short loc_1404F2317
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F2317:                          ; CODE XREF: HvlQueryActiveProcessors+E↑j
                xor     edx, edx
                test    r8, r8
                jnz     short loc_1404F2325
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F2325:                          ; CODE XREF: HvlQueryActiveProcessors+1C↑j
                test    r9, r9
                jz      short loc_1404F2371
                mov     ecx, [rcx]
                mov     r10d, ecx
                cmp     cs:dword_140CFC5C4, ecx
                cmovb   r10d, cs:dword_140CFC5C4
                test    r10d, r10d
                jz      short loc_1404F2362
                lea     rcx, dword_140D042E4
                mov     edx, r10d

loc_1404F234C:                          ; CODE XREF: HvlQueryActiveProcessors+5D↓j
                mov     eax, [rcx]
                lea     rcx, [rcx+78h]
                mov     [r9], eax
                lea     r9, [r9+4]
                sub     rdx, 1
                jnz     short loc_1404F234C
                mov     ecx, [r8]

loc_1404F2362:                          ; CODE XREF: HvlQueryActiveProcessors+40↑j
                cmp     ecx, cs:dword_140CFC5C4
                sbb     eax, eax
                and     eax, 0C0000023h
                mov     edx, eax

loc_1404F2371:                          ; CODE XREF: HvlQueryActiveProcessors+28↑j
                mov     ecx, cs:dword_140CFC5C4
                mov     eax, edx
                mov     [r8], ecx
                retn
HvlQueryActiveProcessors endp
