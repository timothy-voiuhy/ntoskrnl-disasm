PsIsWin32KFilterAuditEnabledForProcess proc near
                                        ; DATA XREF: .pdata:00000001400D8660↑o
                mov     eax, [rcx+9D0h]
                shr     eax, 0Fh
                and     al, 1
                retn
PsIsWin32KFilterAuditEnabledForProcess endp
