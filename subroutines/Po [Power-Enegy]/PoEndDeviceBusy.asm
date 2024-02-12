PoEndDeviceBusy proc near               ; DATA XREF: .pdata:00000001400F64C8↑o
                lock dec dword ptr [rcx+8]
                retn
PoEndDeviceBusy endp
