FsRtlGetCurrentProcessLoaderList proc near
                                        ; DATA XREF: .pdata:000000014011C2E0↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+550h]
                mov     rax, [rax+18h]
                add     rax, 10h
                retn
FsRtlGetCurrentProcessLoaderList endp
