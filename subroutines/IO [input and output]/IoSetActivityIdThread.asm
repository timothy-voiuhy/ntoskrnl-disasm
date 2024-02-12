IoSetActivityIdThread proc near         ; CODE XREF: sub_140643F60+322↓p
                                        ; sub_140643F60+33A↓p ...
                mov     rdx, gs:188h
                mov     rax, [rdx+5A0h]
                mov     [rdx+5A0h], rcx
                retn
IoSetActivityIdThread endp
