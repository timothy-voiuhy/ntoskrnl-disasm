RtlQueryProcessPlaceholderCompatibilityMode proc near
                                        ; DATA XREF: .pdata:000000014012225C↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+550h]
                test    rax, rax
                jnz     short loc_140918D70
                mov     al, 0FDh
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140918D70:                          ; CODE XREF: RtlQueryProcessPlaceholderCompatibilityMode+1A↑j
                mov     al, [rax+7B0h]
                retn
RtlQueryProcessPlaceholderCompatibilityMode endp
