KeEnterCriticalRegion proc near         ; CODE XREF: sub_14060DA00+FCF↓p
                                        ; sub_14060DA00+1031↓p ...
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                retn
KeEnterCriticalRegion endp
