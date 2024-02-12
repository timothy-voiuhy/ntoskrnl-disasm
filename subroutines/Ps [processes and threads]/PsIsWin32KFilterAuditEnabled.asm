PsIsWin32KFilterAuditEnabled proc near  ; DATA XREF: .pdata:00000001400D8654↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     eax, [rcx+9D0h]
                shr     eax, 0Fh
                and     al, 1
                retn
PsIsWin32KFilterAuditEnabled endp
