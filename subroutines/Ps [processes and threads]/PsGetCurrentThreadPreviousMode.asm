PsGetCurrentThreadPreviousMode proc near
                                        ; DATA XREF: .pdata:00000001400D7430↑o
                mov     rax, gs:188h
                mov     al, [rax+232h]
                retn
PsGetCurrentThreadPreviousMode endp
