PoStartDeviceBusy proc near             ; DATA XREF: .pdata:00000001400F64E0↑o
                lock inc dword ptr [rcx+4]
                lock inc dword ptr [rcx+8]
                retn
PoStartDeviceBusy endp
