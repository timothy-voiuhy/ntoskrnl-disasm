PsGetProcessInheritedFromUniqueProcessId proc near
                                        ; CODE XREF: PsChargeProcessWakeCounter+1F↓p
                                        ; DATA XREF: .rdata:0000000140008FA0↑o ...
                mov     rax, [rcx+540h]
                retn
PsGetProcessInheritedFromUniqueProcessId endp
