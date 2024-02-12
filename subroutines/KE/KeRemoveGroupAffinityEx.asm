KeRemoveGroupAffinityEx proc near       ; DATA XREF: .pdata:00000001400F33FC↑o
                cmp     [rcx], dx
                jbe     short locret_140513850
                movzx   eax, dx
                not     r8
                and     [rcx+rax*8+8], r8

locret_140513850:                       ; CODE XREF: KeRemoveGroupAffinityEx+3↑j
                retn
KeRemoveGroupAffinityEx endp
