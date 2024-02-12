EtwpDisableStackWalkApc proc near       ; DATA XREF: .pdata:00000001400D974C↑o
                mov     r8, gs:188h
                prefetchw byte ptr [r8+78h]

loc_1403636AE:                          ; CODE XREF: EtwpDisableStackWalkApc+22↓j
                mov     edx, [r8+78h]
                mov     ecx, edx
                or      ecx, 0FF000000h
                mov     eax, edx
                lock cmpxchg [r8+78h], ecx
                jnz     short loc_1403636AE
                shr     edx, 18h
                mov     eax, edx
                retn
EtwpDisableStackWalkApc endp
