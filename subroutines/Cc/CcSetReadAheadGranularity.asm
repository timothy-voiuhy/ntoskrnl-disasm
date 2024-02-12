CcSetReadAheadGranularity proc near     ; DATA XREF: .pdata:00000001400D806C↑o
                mov     rax, [rcx+30h]
                dec     edx
                mov     [rax+4], edx
                retn
CcSetReadAheadGranularity endp
