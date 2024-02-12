HvlGetLpIndexFromProcessorIndex proc near
                                        ; CODE XREF: sub_140398FF4+107679↑p
                                        ; sub_1403A7988+10033F↑p ...
                xor     eax, eax
                mov     edx, ecx
                cmp     cs:byte_140C12430, al
                jz      short loc_1404F2290
                mov     eax, ecx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1404F2290:                          ; CODE XREF: HvlGetLpIndexFromProcessorIndex+A↑j
                mov     r8d, cs:dword_140CFC4BC
                lea     rcx, dword_140D042E0
                test    r8d, r8d
                jz      short loc_1404F22B3

loc_1404F22A3:                          ; CODE XREF: HvlGetLpIndexFromProcessorIndex+31↓j
                cmp     [rcx+18h], edx
                jz      short loc_1404F22B8
                inc     eax
                add     rcx, 78h ; 'x'
                cmp     eax, r8d
                jb      short loc_1404F22A3

loc_1404F22B3:                          ; CODE XREF: HvlGetLpIndexFromProcessorIndex+21↑j
                or      eax, 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1404F22B8:                          ; CODE XREF: HvlGetLpIndexFromProcessorIndex+26↑j
                mov     eax, [rcx+4]
                retn
HvlGetLpIndexFromProcessorIndex endp
