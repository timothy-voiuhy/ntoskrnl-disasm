PsIsSystemProcess proc near             ; CODE XREF: sub_14067EC44+736↓p
                                        ; DATA XREF: .pdata:00000001400CFEA0↑o
                mov     eax, [rcx+87Ch]
                shr     eax, 0Ch
                and     al, 1
                retn
PsIsSystemProcess endp
