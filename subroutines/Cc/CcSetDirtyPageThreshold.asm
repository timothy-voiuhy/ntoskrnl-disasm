CcSetDirtyPageThreshold proc near       ; DATA XREF: .pdata:00000001400F0E04↑o
                mov     rax, [rcx+28h]
                mov     r8, [rax+8]
                test    r8, r8
                jz      short loc_1404E9EE4
                mov     [r8+108h], edx

loc_1404E9EE4:                          ; CODE XREF: CcSetDirtyPageThreshold+B↑j
                mov     rcx, [rcx+18h]
                mov     al, [rcx+4]
                test    al, 4
                jnz     short locret_1404E9EF4
                or      al, 4
                mov     [rcx+4], al

locret_1404E9EF4:                       ; CODE XREF: CcSetDirtyPageThreshold+1D↑j
                retn
CcSetDirtyPageThreshold endp
