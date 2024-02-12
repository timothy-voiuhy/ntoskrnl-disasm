RtlIsGenericTableEmpty proc near        ; DATA XREF: .pdata:00000001400DC884↑o
                cmp     qword ptr [rcx], 0
                setz    al
                retn
RtlIsGenericTableEmpty endp
