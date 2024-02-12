PoSetSystemWake proc near               ; DATA XREF: .pdata:00000001400F6144↑o
                movsx   rax, byte ptr [rcx+42h]
                lea     rdx, [rax+rax*8]
                mov     rax, [rcx+rdx*8+0C8h]
                cmp     byte ptr [rax+0B8h], 0
                jnz     short locret_1405655C1
                mov     byte ptr [rax+0F0h], 1

locret_1405655C1:                       ; CODE XREF: PoSetSystemWake+18↑j
                retn
PoSetSystemWake endp
