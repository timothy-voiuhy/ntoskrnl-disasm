PsGetThreadProcess proc near            ; CODE XREF: sub_140615D50+2C9↓p
                                        ; NtQueryInformationThread+43B↓p ...
                mov     rax, [rcx+220h] ; IoThreadToProcess
                retn
PsGetThreadProcess endp
