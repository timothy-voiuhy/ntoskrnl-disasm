KeEnterGuardedRegion proc near          ; DATA XREF: .pdata:00000001400D55A0↑o
                                        ; sub_140A1EEE4+2D33↓o
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                retn
KeEnterGuardedRegion endp
