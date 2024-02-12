HvlQueryActiveHypervisorProcessorCount proc near
                                        ; DATA XREF: .pdata:00000001400F1668↑o
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jnz     short loc_1404F22E1
                mov     eax, 0C0000001h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F22E1:                          ; CODE XREF: HvlQueryActiveHypervisorProcessorCount+8↑j
                mov     eax, cs:dword_140CFC5C4
                mov     [rcx], eax
                xor     eax, eax
                retn
HvlQueryActiveHypervisorProcessorCount endp
