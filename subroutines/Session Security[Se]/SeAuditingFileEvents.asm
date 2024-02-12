SeAuditingFileEvents proc near          ; DATA XREF: .pdata:0000000140122910↑o
                xor     al, al
                cmp     cs:byte_140C1D344, al
                jz      short loc_140921E9E
                test    cl, cl
                jnz     short loc_140921EC2

loc_140921E9E:                          ; CODE XREF: SeAuditingFileEvents+8↑j
                cmp     cs:byte_140C1D345, al
                jz      short loc_140921EAA
                test    cl, cl
                jz      short loc_140921EC2

loc_140921EAA:                          ; CODE XREF: SeAuditingFileEvents+14↑j
                cmp     cs:byte_140C1D346, al
                jz      short loc_140921EB6
                test    cl, cl
                jnz     short loc_140921EC2

loc_140921EB6:                          ; CODE XREF: SeAuditingFileEvents+20↑j
                cmp     cs:byte_140C1D347, al
                jz      short locret_140921EC4
                test    cl, cl
                jnz     short locret_140921EC4

loc_140921EC2:                          ; CODE XREF: SeAuditingFileEvents+C↑j
                                        ; SeAuditingFileEvents+18↑j ...
                mov     al, 1

locret_140921EC4:                       ; CODE XREF: SeAuditingFileEvents+2C↑j
                                        ; SeAuditingFileEvents+30↑j
                retn
SeAuditingFileEvents endp
