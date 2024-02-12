PsGetProcessProtection proc near        ; CODE XREF: NtQueryInformationProcess+2D40↓p
                                        ; DATA XREF: .pdata:00000001400D8DC8↑o ...
                mov     al, [rcx+87Ah]
                retn
PsGetProcessProtection endp
