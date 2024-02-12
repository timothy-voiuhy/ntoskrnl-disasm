PoGetSystemWake proc near               ; DATA XREF: .pdata:00000001400DDBA4↑o
                movsx   rax, byte ptr [rcx+42h]
                lea     rdx, [rax+rax*8]
                xor     al, al
                mov     r8, [rcx+rdx*8+0C8h]
                cmp     [r8+0B8h], al
                jnz     short locret_1403A7763
                mov     al, [r8+0F0h]

locret_1403A7763:                       ; CODE XREF: PoGetSystemWake+1A↑j
                retn
PoGetSystemWake endp
