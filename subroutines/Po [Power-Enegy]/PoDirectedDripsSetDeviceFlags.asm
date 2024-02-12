PoDirectedDripsSetDeviceFlags proc near ; CODE XREF: sub_14067B764+3B0↓p
                                        ; DATA XREF: .pdata:00000001400DF8A8↑o
                xor     r8d, r8d
                test    rcx, rcx
                jz      short loc_1403C9AA5
                mov     rax, [rcx+138h]
                mov     r9, [rax+28h]

loc_1403C9A83:                          ; CODE XREF: PoDirectedDripsSetDeviceFlags+38↓j
                test    r9, r9
                jz      short loc_1403C9AAA
                test    edx, 0FFFFFFC0h
                jnz     short loc_1403C9AAA
                mov     ecx, [r9+2F8h]
                or      ecx, edx
                mov     [r9+2F8h], ecx

loc_1403C9AA0:                          ; CODE XREF: PoDirectedDripsSetDeviceFlags+40↓j
                mov     eax, r8d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C9AA5:                          ; CODE XREF: PoDirectedDripsSetDeviceFlags+6↑j
                mov     r9, r8
                jmp     short loc_1403C9A83
; ---------------------------------------------------------------------------

loc_1403C9AAA:                          ; CODE XREF: PoDirectedDripsSetDeviceFlags+16↑j
                                        ; PoDirectedDripsSetDeviceFlags+1E↑j
                mov     r8d, 0C000000Dh
                jmp     short loc_1403C9AA0
PoDirectedDripsSetDeviceFlags endp
