KeInterlockedClearProcessorAffinityEx proc near
                                        ; DATA XREF: .pdata:00000001400F33D8↑o
                mov     eax, edx
                mov     r8, rcx
                lea     rcx, dword_140D010D0
                mov     r9d, 1
                mov     ecx, [rcx+rax*4]
                mov     edx, ecx
                and     ecx, 3Fh
                shr     rdx, 6
                shl     r9, cl
                mov     r10, r9
                not     r10
                prefetchw byte ptr [r8+rdx*8+8]
                mov     rax, [r8+rdx*8+8]

loc_140513772:                          ; CODE XREF: KeInterlockedClearProcessorAffinityEx+3F↓j
                mov     rcx, rax
                and     rcx, r10
                lock cmpxchg [r8+rdx*8+8], rcx
                jnz     short loc_140513772
                test    rax, r9
                mov     eax, 0
                setnz   al
                retn
KeInterlockedClearProcessorAffinityEx endp
