ExInitializeZone proc near              ; DATA XREF: .pdata:00000001400FA0B0↑o
                test    dl, 7
                mov     r11d, edx
                setz    r10b
                test    r8b, 7
                setz    al
                test    al, r10b
                jz      short loc_1405B6F19
                cmp     r11d, r9d
                ja      short loc_1405B6F19
                xor     eax, eax
                mov     [rcx+8], r8
                mov     [rcx+10h], r11d
                sub     r9d, r11d
                mov     [r8], rax
                mov     [r8+8], rax
                add     r8, 10h
                lea     edx, [rax+10h]
                mov     [rcx], rax
                cmp     r9d, edx
                jb      short loc_1405B6F12

loc_1405B6EFE:                          ; CODE XREF: ExInitializeZone+50↓j
                mov     rax, [rcx]
                add     edx, r11d
                mov     [r8], rax
                mov     [rcx], r8
                add     r8, r11
                cmp     edx, r9d
                jbe     short loc_1405B6EFE

loc_1405B6F12:                          ; CODE XREF: ExInitializeZone+3C↑j
                mov     [rcx+14h], edx
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405B6F19:                          ; CODE XREF: ExInitializeZone+14↑j
                                        ; ExInitializeZone+19↑j
                mov     eax, 0C000000Dh
                retn
ExInitializeZone endp
