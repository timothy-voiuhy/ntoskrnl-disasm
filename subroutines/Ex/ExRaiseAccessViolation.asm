ExRaiseAccessViolation proc near        ; CODE XREF: NtQuerySecurityAttributesToken:loc_1405E9116↑p
                                        ; ProbeForWrite:loc_140611189↑p ...
                sub     rsp, 28h
                mov     ecx, 0C0000005h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
ExRaiseAccessViolation endp
