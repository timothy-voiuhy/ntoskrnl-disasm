PoSetDeviceBusyEx proc near             ; DATA XREF: .pdata:00000001400F64D4↑o
                lock inc dword ptr [rcx+4]
                retn
PoSetDeviceBusyEx endp
