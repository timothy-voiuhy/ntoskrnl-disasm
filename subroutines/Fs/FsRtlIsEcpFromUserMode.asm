FsRtlIsEcpFromUserMode proc near        ; DATA XREF: .pdata:00000001401055B8↑o
                mov     eax, [rcx-18h]
                shr     eax, 4
                and     al, 1
                retn
FsRtlIsEcpFromUserMode endp
