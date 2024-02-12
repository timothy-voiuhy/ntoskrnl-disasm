RtlSetProcessPlaceholderCompatibilityMode proc near
                                        ; DATA XREF: .pdata:0000000140122274↑o
                cmp     cl, 3
                ja      short loc_140918DF5
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     r8, [rdx+550h]
                test    r8, r8
                jnz     short loc_140918DE5
                mov     al, 0FDh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140918DE5:                          ; CODE XREF: RtlSetProcessPlaceholderCompatibilityMode+1F↑j
                mov     al, [r8+7B0h]
                mov     [r8+7B0h], cl
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140918DF5:                          ; CODE XREF: RtlSetProcessPlaceholderCompatibilityMode+3↑j
                mov     al, 0FFh
                retn
RtlSetProcessPlaceholderCompatibilityMode endp
