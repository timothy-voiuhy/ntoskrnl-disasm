KeInterlockedSetProcessorAffinityEx proc near
                                        ; DATA XREF: .pdata:00000001400DDE20↑o
                mov     eax, edx
                mov     r8, rcx
                lea     rcx, dword_140D010D0
                mov     r9d, 1
                mov     ecx, [rcx+rax*4]
                mov     edx, ecx
                and     ecx, 3Fh
                shr     rdx, 6
                shl     r9, cl
                prefetchw byte ptr [r8+rdx*8+8]
                mov     rax, [r8+rdx*8+8]

loc_1403A96FC:                          ; CODE XREF: KeInterlockedSetProcessorAffinityEx+39↓j
                mov     rcx, rax
                or      rcx, r9
                lock cmpxchg [r8+rdx*8+8], rcx
                jnz     short loc_1403A96FC
                test    rax, r9
                mov     eax, 0
                setnz   al
                retn
KeInterlockedSetProcessorAffinityEx endp
