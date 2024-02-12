KeSetHardwareCounterConfiguration proc near
                                        ; DATA XREF: .pdata:000000014011DF48↑o
                mov     r8, rcx
                cmp     edx, 10h
                jbe     short loc_1408BD8FF
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408BD8FF:                          ; CODE XREF: KeSetHardwareCounterConfiguration+6↑j
                test    edx, edx
                jz      short loc_1408BD938
                cmp     cs:dword_140CF9EBC, 0
                jz      short loc_1408BD913
                mov     eax, 0C0000303h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408BD913:                          ; CODE XREF: KeSetHardwareCounterConfiguration+1A↑j
                test    edx, edx
                jz      short loc_1408BD938
                lea     rcx, unk_140C2B1C0
                mov     r9d, edx
                add     r8, 8

loc_1408BD925:                          ; CODE XREF: KeSetHardwareCounterConfiguration+46↓j
                mov     eax, [r8]
                lea     r8, [r8+10h]
                mov     [rcx], eax
                lea     rcx, [rcx+4]
                sub     r9, 1
                jnz     short loc_1408BD925

loc_1408BD938:                          ; CODE XREF: KeSetHardwareCounterConfiguration+11↑j
                                        ; KeSetHardwareCounterConfiguration+25↑j
                mov     cs:dword_140CF9EBC, edx
                xor     eax, eax
                retn
KeSetHardwareCounterConfiguration endp
