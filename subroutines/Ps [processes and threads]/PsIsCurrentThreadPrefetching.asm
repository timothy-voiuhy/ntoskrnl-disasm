PsIsCurrentThreadPrefetching proc near  ; CODE XREF: sub_14068F878:loc_14068F98F↓p
                                        ; sub_1406932DC+181A1A↓p
                                        ; DATA XREF: ...
                mov     rax, gs:188h
                mov     al, [rax+518h]
                shr     al, 6
                and     al, 1
                retn
PsIsCurrentThreadPrefetching endp
