MmQueryMemoryRanges proc near           ; CODE XREF: sub_140991EF0+11A91↓p
                                        ; DATA XREF: .pdata:0000000140107940↑o ...
                mov     eax, 0C00000BBh ; LpcReplyWaitReplyPort
                                        ; MmAllocateMemoryRanges
                                        ; MmConfigureGraphicsPtes
                                        ; MmFreeMemoryRanges
                retn
MmQueryMemoryRanges endp
