IoIsWdmVersionAvailable proc near       ; DATA XREF: .pdata:000000014011D000↑o
                cmp     cl, 6
                jb      short loc_14089FB90
                xor     al, al
                cmp     cl, 6
                jnz     short locret_14089FB92
                test    dl, dl
                jnz     short locret_14089FB92

loc_14089FB90:                          ; CODE XREF: IoIsWdmVersionAvailable+3↑j
                mov     al, 1

locret_14089FB92:                       ; CODE XREF: IoIsWdmVersionAvailable+A↑j
                                        ; IoIsWdmVersionAvailable+E↑j
                retn
IoIsWdmVersionAvailable endp
