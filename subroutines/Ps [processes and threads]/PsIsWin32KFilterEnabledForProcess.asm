PsIsWin32KFilterEnabledForProcess proc near
                                        ; DATA XREF: .pdata:00000001400D7C4C↑o
                mov     eax, [rcx+9D0h]
                shr     eax, 0Eh
                and     al, 1
                retn
PsIsWin32KFilterEnabledForProcess endp
