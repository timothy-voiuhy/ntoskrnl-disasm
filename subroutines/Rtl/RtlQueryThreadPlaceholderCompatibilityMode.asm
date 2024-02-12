RtlQueryThreadPlaceholderCompatibilityMode proc near
                                        ; DATA XREF: .pdata:0000000140122268↑o
                mov     rcx, gs:188h
                test    dword ptr [rcx+74h], 400h
                jnz     short loc_140918DA4
                cmp     byte ptr [rcx+24Ah], 1
                jz      short loc_140918DA4
                mov     rax, [rcx+0F0h]
                jmp     short loc_140918DA6
; ---------------------------------------------------------------------------

loc_140918DA4:                          ; CODE XREF: RtlQueryThreadPlaceholderCompatibilityMode+10↑j
                                        ; RtlQueryThreadPlaceholderCompatibilityMode+19↑j
                xor     eax, eax

loc_140918DA6:                          ; CODE XREF: RtlQueryThreadPlaceholderCompatibilityMode+22↑j
                test    rax, rax
                jnz     short loc_140918DAF
                mov     al, 0FEh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140918DAF:                          ; CODE XREF: RtlQueryThreadPlaceholderCompatibilityMode+29↑j
                mov     al, [rax+280h]
                retn
RtlQueryThreadPlaceholderCompatibilityMode endp
