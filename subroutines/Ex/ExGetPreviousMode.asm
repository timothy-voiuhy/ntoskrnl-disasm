ExGetPreviousMode proc near             ; CODE XREF: sub_1405D28C4+C8↓p
                                        ; sub_1405D463C+5C↓p ...
                mov     rax, gs:188h
                movzx   eax, byte ptr [rax+232h]
                retn
ExGetPreviousMode endp
