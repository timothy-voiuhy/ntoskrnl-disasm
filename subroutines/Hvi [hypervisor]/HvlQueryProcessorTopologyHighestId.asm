HvlQueryProcessorTopologyHighestId proc near
                                        ; DATA XREF: .pdata:00000001400F16BC↑o
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jnz     short loc_1404F25E1
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F25E1:                          ; CODE XREF: HvlQueryProcessorTopologyHighestId+8↑j
                test    rcx, rcx
                jz      short loc_1404F25EE
                mov     eax, cs:dword_140CF647C
                mov     [rcx], eax

loc_1404F25EE:                          ; CODE XREF: HvlQueryProcessorTopologyHighestId+14↑j
                test    rdx, rdx
                jz      short loc_1404F25FB
                mov     eax, cs:dword_140CF6480
                mov     [rdx], eax

loc_1404F25FB:                          ; CODE XREF: HvlQueryProcessorTopologyHighestId+21↑j
                xor     eax, eax
                retn
HvlQueryProcessorTopologyHighestId endp
