RtlGetEnabledExtendedAndSupervisorFeatures proc near
                                        ; DATA XREF: .pdata:00000001400F7F44↑o
                mov     rax, 0FFFFF780000005F0h
                mov     rdx, 0FFFFF780000003D8h
                mov     rax, [rax]
                mov     rdx, [rdx]
                or      rax, rdx
                and     rax, rcx
                retn
RtlGetEnabledExtendedAndSupervisorFeatures endp
