KeCheckProcessorAffinityEx proc near    ; DATA XREF: .pdata:00000001400CD320↑o
                mov     r8, rcx
                mov     eax, edx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                mov     eax, ecx
                and     ecx, 3Fh
                shr     rax, 6
                mov     rax, [r8+rax*8+8]
                shr     rax, cl
                and     eax, 1
                retn
KeCheckProcessorAffinityEx endp
