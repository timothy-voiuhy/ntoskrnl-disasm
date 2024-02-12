PsGetCurrentThreadStackLimit proc near  ; DATA XREF: .pdata:00000001400F7704↑o
                mov     rax, gs:188h
                mov     rax, [rax+30h]
                retn
PsGetCurrentThreadStackLimit endp
