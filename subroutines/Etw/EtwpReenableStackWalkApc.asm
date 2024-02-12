EtwpReenableStackWalkApc proc near      ; DATA XREF: .pdata:00000001400D9758↑o
                mov     r8, gs:188h
                shl     ecx, 18h
                or      ecx, 0FFFFFFh
                prefetchw byte ptr [r8+78h]

loc_1403636F7:                          ; CODE XREF: EtwpReenableStackWalkApc+25↓j
                mov     eax, [r8+78h]
                mov     edx, ecx
                and     edx, eax
                lock cmpxchg [r8+78h], edx
                jnz     short loc_1403636F7
                retn
EtwpReenableStackWalkApc endp
