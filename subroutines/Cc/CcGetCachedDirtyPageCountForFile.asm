CcGetCachedDirtyPageCountForFile proc near
                                        ; DATA XREF: .pdata:00000001400F0EDC↑o
                or      eax, 0FFFFFFFFh
                test    rcx, rcx
                jz      short locret_1404EACD4
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short locret_1404EACD4
                mov     eax, [rcx+70h]

locret_1404EACD4:                       ; CODE XREF: CcGetCachedDirtyPageCountForFile+6↑j
                                        ; CcGetCachedDirtyPageCountForFile+F↑j
                retn
CcGetCachedDirtyPageCountForFile endp
