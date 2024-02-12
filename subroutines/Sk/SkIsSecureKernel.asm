SkIsSecureKernel proc near              ; CODE XREF: NtSetInformationProcess+A5D↓p
                                        ; NtSetInformationProcess+ABC↓p ...
                mov     eax, 0C0000002h ; CcTestControl
                retn
SkIsSecureKernel endp
