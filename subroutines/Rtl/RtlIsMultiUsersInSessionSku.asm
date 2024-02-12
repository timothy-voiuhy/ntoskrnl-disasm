RtlIsMultiUsersInSessionSku proc near   ; CODE XREF: sub_1403A483C:loc_1404A603E↑p
                                        ; DATA XREF: .pdata:0000000140122010↑o
                mov     eax, ds:0FFFFF780000002F0h
                shr     eax, 9
                and     al, 1
                retn
RtlIsMultiUsersInSessionSku endp
