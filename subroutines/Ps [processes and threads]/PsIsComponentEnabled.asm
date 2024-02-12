PsIsComponentEnabled proc near          ; DATA XREF: .pdata:00000001400E1A08↑o
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                test    [rdx+0A20h], ecx
                setz    al
                retn
PsIsComponentEnabled endp
