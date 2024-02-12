PsIsDiskCountersEnabled proc near       ; CODE XREF: sub_1407CAD10+14A↓p
                                        ; DATA XREF: .pdata:00000001400DF998↑o
                cmp     cs:dword_140CFC700, 0
                setz    al
                retn
PsIsDiskCountersEnabled endp
