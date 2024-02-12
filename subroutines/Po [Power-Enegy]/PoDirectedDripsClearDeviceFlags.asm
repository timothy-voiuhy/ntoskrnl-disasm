PoDirectedDripsClearDeviceFlags proc near
                                        ; CODE XREF: sub_14067B764+19576E↓p
                                        ; DATA XREF: .pdata:00000001400F6444↑o
                xor     r8d, r8d
                test    rcx, rcx
                jz      short loc_1405689D5
                mov     rax, [rcx+138h]
                mov     r9, [rax+28h]
                jmp     short loc_1405689D8
; ---------------------------------------------------------------------------

loc_1405689D5:                          ; CODE XREF: PoDirectedDripsClearDeviceFlags+6↑j
                mov     r9, r8

loc_1405689D8:                          ; CODE XREF: PoDirectedDripsClearDeviceFlags+13↑j
                test    r9, r9
                jnz     short loc_1405689E5

loc_1405689DD:                          ; CODE XREF: PoDirectedDripsClearDeviceFlags+2B↓j
                mov     r8d, 0C000000Dh
                jmp     short loc_1405689FF
; ---------------------------------------------------------------------------

loc_1405689E5:                          ; CODE XREF: PoDirectedDripsClearDeviceFlags+1B↑j
                test    edx, 0FFFFFFC0h
                jnz     short loc_1405689DD
                mov     ecx, [r9+2F8h]
                not     edx
                and     ecx, edx
                mov     [r9+2F8h], ecx

loc_1405689FF:                          ; CODE XREF: PoDirectedDripsClearDeviceFlags+23↑j
                mov     eax, r8d
                retn
PoDirectedDripsClearDeviceFlags endp
