FsRtlDismountComplete proc near         ; DATA XREF: .pdata:000000014010AC7C↑o
                test    edx, edx
                js      short locret_140772A11
                mov     rax, 0FFFFF780000002DCh
                lock inc dword ptr [rax]

locret_140772A11:                       ; CODE XREF: FsRtlDismountComplete+2↑j
                retn
FsRtlDismountComplete endp
