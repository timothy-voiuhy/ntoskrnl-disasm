KeSignalCallDpcDone proc near           ; DATA XREF: .pdata:00000001400D9488↑o
                lock dec dword ptr [rcx]
                retn
KeSignalCallDpcDone endp
