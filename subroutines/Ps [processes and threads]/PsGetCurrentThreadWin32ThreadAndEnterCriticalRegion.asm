PsGetCurrentThreadWin32ThreadAndEnterCriticalRegion proc near
                                        ; DATA XREF: .pdata:00000001400D557C↑o
                mov     rax, gs:188h
                mov     rdx, [rax+478h]
                mov     [rcx], rdx
                dec     word ptr [rax+1E4h]
                mov     rax, [rax+1C8h]
                retn
PsGetCurrentThreadWin32ThreadAndEnterCriticalRegion endp
