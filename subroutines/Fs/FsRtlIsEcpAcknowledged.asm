FsRtlIsEcpAcknowledged proc near        ; DATA XREF: .pdata:00000001401050E4↑o
                mov     eax, [rcx-18h]
                shr     eax, 3
                and     al, 1
                retn
FsRtlIsEcpAcknowledged endp
