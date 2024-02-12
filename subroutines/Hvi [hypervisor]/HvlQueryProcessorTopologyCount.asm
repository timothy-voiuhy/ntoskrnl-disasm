HvlQueryProcessorTopologyCount proc near
                                        ; CODE XREF: sub_14060DA00+2881↓p
                                        ; DATA XREF: .pdata:00000001400F16A4↑o
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jnz     short loc_1404F2511
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F2511:                          ; CODE XREF: HvlQueryProcessorTopologyCount+8↑j
                test    rcx, rcx
                jz      short loc_1404F251E
                mov     eax, cs:dword_140CFC948
                mov     [rcx], eax

loc_1404F251E:                          ; CODE XREF: HvlQueryProcessorTopologyCount+14↑j
                test    rdx, rdx
                jz      short loc_1404F252B
                mov     eax, cs:dword_140CFC944
                mov     [rdx], eax

loc_1404F252B:                          ; CODE XREF: HvlQueryProcessorTopologyCount+21↑j
                xor     eax, eax
                retn
HvlQueryProcessorTopologyCount endp
