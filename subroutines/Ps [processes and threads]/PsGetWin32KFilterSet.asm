PsGetWin32KFilterSet proc near          ; CODE XREF: NtQueryInformationProcess+26C4↓p
                                        ; DATA XREF: .pdata:00000001400D6C80↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     eax, [rcx+968h]
                retn
PsGetWin32KFilterSet endp
