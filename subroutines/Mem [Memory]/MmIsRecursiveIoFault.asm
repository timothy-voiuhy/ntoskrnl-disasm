MmIsRecursiveIoFault proc near          ; CODE XREF: sub_1402A2250+1A9↑p
                                        ; DATA XREF: .pdata:00000001400CFA08↑o
                mov     rcx, gs:188h
                xor     eax, eax
                cmp     [rcx+51Dh], al
                jnz     short loc_1402A24BC
                cmp     byte ptr [rcx+51Ch], 1
                jnz     short locret_1402A24BE

loc_1402A24BC:                          ; CODE XREF: MmIsRecursiveIoFault+11↑j
                mov     al, 1

locret_1402A24BE:                       ; CODE XREF: MmIsRecursiveIoFault+1A↑j
                retn
MmIsRecursiveIoFault endp
