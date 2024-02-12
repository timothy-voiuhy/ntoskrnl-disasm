ExIsManufacturingModeEnabled proc near  ; CODE XREF: sub_140A5F940+44↓p
                                        ; DATA XREF: .pdata:0000000140108648↑o
                mov     al, byte ptr cs:xmmword_140C195A0
                and     al, 1
                retn
ExIsManufacturingModeEnabled endp
