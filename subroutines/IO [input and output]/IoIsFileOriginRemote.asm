IoIsFileOriginRemote proc near          ; DATA XREF: .pdata:00000001400D9110↑o
                mov     al, [rcx+53h]
                and     al, 1
                retn
IoIsFileOriginRemote endp
