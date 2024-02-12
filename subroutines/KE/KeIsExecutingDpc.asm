KeIsExecutingDpc proc near              ; CODE XREF: sub_1402C8140:loc_1402C888D↑p
                                        ; DATA XREF: .pdata:00000001400D71C0↑o
                mov     eax, gs:32ACh
                and     eax, 10001h
                retn
KeIsExecutingDpc endp
