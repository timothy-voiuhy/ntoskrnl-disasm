HvlRegisterInterruptCallback proc near  ; DATA XREF: .pdata:00000001400F15CC↑o
                movsxd  r9, ecx
                cmp     r9d, 4
                ja      short loc_1404F1E6C
                cmp     cs:byte_140CFC40A, 0
                jnz     short loc_1404F1E39
                mov     eax, 0C00000BBh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F1E39:                          ; CODE XREF: HvlRegisterInterruptCallback+10↑j
                lea     r11, sub_1404F1930
                mov     rax, r11
                lea     r10, off_140CFB430
                lock cmpxchg [r10+r9*8], rdx
                cmp     rax, r11
                jnz     short loc_1404F1E65
                test    r8, r8
                jz      short loc_1404F1E61
                lea     eax, [r9+30h]
                mov     [r8], eax

loc_1404F1E61:                          ; CODE XREF: HvlRegisterInterruptCallback+38↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F1E65:                          ; CODE XREF: HvlRegisterInterruptCallback+33↑j
                mov     eax, 0C0000001h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1404F1E6C:                          ; CODE XREF: HvlRegisterInterruptCallback+7↑j
                mov     eax, 0C000000Dh
                retn
HvlRegisterInterruptCallback endp
