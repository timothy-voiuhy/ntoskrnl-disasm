wcscmp          proc near               ; CODE XREF: sub_1405DF3FC+5A0↓p
                                        ; sub_1406D2F50+AF↓p ...
                movzx   eax, word ptr [rdx]
                movzx   r8d, word ptr [rcx]
                sub     r8d, eax
                jnz     short loc_1403D3BA5
                sub     rcx, rdx

loc_1403D3B8F:                          ; CODE XREF: wcscmp+23↓j
                test    ax, ax
                jz      short loc_1403D3BA5
                add     rdx, 2
                movzx   eax, word ptr [rdx]
                movzx   r8d, word ptr [rcx+rdx]
                sub     r8d, eax
                jz      short loc_1403D3B8F

loc_1403D3BA5:                          ; CODE XREF: wcscmp+A↑j
                                        ; wcscmp+12↑j
                mov     eax, r8d
                shr     r8d, 1Fh
                neg     eax
                shr     eax, 1Fh
                sub     eax, r8d
                retn
wcscmp          endp

; ---------------------------------------------------------------------------
                align 2
algn_1403D3BB6:                         ; DATA XREF: .pdata:00000001400E0A30↑o
                align 20h
; Exported entry 3075. wcscspn

; =============== S U B R O U T I N E =======================================


