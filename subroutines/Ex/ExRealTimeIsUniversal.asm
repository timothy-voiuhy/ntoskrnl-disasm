ExRealTimeIsUniversal proc near         ; CODE XREF: sub_140865924:loc_140865986↓p
                                        ; DATA XREF: .pdata:00000001400D77CC↑o
                cmp     cs:dword_140CF4D0C, 0
                setnz   al
                retn
ExRealTimeIsUniversal endp
