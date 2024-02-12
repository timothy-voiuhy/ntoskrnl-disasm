IoClearActivityIdThread proc near       ; CODE XREF: sub_1406D2A38+2EE↓p
                                        ; sub_140761B90+29F↓p
                                        ; DATA XREF: ...
                mov     rax, gs:188h
                mov     [rax+5A0h], rcx
                retn
IoClearActivityIdThread endp
