RtlQueryElevationFlags proc near        ; CODE XREF: sub_14063EF70+1A9↑p
                                        ; DATA XREF: .pdata:0000000140105C84↑o
                xor     edx, edx
                mov     [rcx], edx
                mov     eax, ds:0FFFFF780000002F0h
                test    al, 2
                jz      short loc_140708A08
                mov     edx, 1
                mov     [rcx], edx

loc_140708A08:                          ; CODE XREF: RtlQueryElevationFlags+F↑j
                mov     eax, ds:0FFFFF780000002F0h
                test    al, 4
                jz      short loc_140708A1A
                or      edx, 2
                mov     [rcx], edx

loc_140708A1A:                          ; CODE XREF: RtlQueryElevationFlags+23↑j
                mov     eax, ds:0FFFFF780000002F0h
                test    al, 8
                jz      short loc_140708A2C
                or      edx, 4
                mov     [rcx], edx

loc_140708A2C:                          ; CODE XREF: RtlQueryElevationFlags+35↑j
                xor     eax, eax
                retn
RtlQueryElevationFlags endp
