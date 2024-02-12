RtlSetThreadPlaceholderCompatibilityMode proc near
                                        ; DATA XREF: .pdata:0000000140122280↑o
                cmp     cl, 3
                ja      short loc_140918E42
                mov     rdx, gs:188h
                test    dword ptr [rdx+74h], 400h
                jnz     short loc_140918E29
                cmp     byte ptr [rdx+24Ah], 1
                jz      short loc_140918E29
                mov     rdx, [rdx+0F0h]
                jmp     short loc_140918E2B
; ---------------------------------------------------------------------------

loc_140918E29:                          ; CODE XREF: RtlSetThreadPlaceholderCompatibilityMode+15↑j
                                        ; RtlSetThreadPlaceholderCompatibilityMode+1E↑j
                xor     edx, edx

loc_140918E2B:                          ; CODE XREF: RtlSetThreadPlaceholderCompatibilityMode+27↑j
                test    rdx, rdx
                jnz     short loc_140918E34
                mov     al, 0FEh
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140918E34:                          ; CODE XREF: RtlSetThreadPlaceholderCompatibilityMode+2E↑j
                mov     al, [rdx+280h]
                mov     [rdx+280h], cl
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140918E42:                          ; CODE XREF: RtlSetThreadPlaceholderCompatibilityMode+3↑j
                mov     al, 0FFh
                retn
RtlSetThreadPlaceholderCompatibilityMode endp
