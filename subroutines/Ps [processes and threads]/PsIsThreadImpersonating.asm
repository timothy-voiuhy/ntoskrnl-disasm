PsIsThreadImpersonating proc near       ; DATA XREF: .pdata:000000014010A220↑o
                mov     eax, [rcx+510h]
                shr     eax, 3
                and     al, 1
                retn
PsIsThreadImpersonating endp
