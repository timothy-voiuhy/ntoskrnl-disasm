PoRegisterDeviceNotify proc near        ; CODE XREF: sub_140760148:loc_1407601D1↓p
                                        ; sub_14063DF30:loc_140805098↓p ...
                mov     eax, 0C00000BBh ; MmProtectDriverSection
                                        ; MmSetBankedSection
                                        ; PoCancelDeviceNotify
                retn
PoRegisterDeviceNotify endp
