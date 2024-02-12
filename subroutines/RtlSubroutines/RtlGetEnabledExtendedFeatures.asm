RtlGetEnabledExtendedFeatures proc near ; CODE XREF: sub_1403EBC6C+81↓p
                                        ; sub_140A1EEE4+13093↓p
                                        ; DATA XREF: ...
                mov     rax, 0FFFFF78000000708h
                mov     rdx, 0FFFFF780000003D8h
                mov     rax, [rax]
                mov     rdx, [rdx]
                or      rax, rdx
                and     rax, rcx
                retn
RtlGetEnabledExtendedFeatures endp
