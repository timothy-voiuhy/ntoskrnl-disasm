wcsncmp         proc near               ; CODE XREF: sub_1403F7D28+48↓p
                                        ; sub_1404BF030+51↓p ...
                test    r8, r8
                jnz     short loc_1403D3C9E
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D3C89:                          ; CODE XREF: wcsncmp+22↓j
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jz      short loc_1403D3CA4
                cmp     ax, [rdx]
                jnz     short loc_1403D3CA4
                add     rcx, 2
                add     rdx, 2

loc_1403D3C9E:                          ; CODE XREF: wcsncmp+3↑j
                sub     r8, 1
                jnz     short loc_1403D3C89

loc_1403D3CA4:                          ; CODE XREF: wcsncmp+F↑j
                                        ; wcsncmp+14↑j
                movzx   eax, word ptr [rcx]
                movzx   ecx, word ptr [rdx]
                sub     eax, ecx
                retn
wcsncmp         endp

; ---------------------------------------------------------------------------
                align 2
algn_1403D3CAE:                         ; DATA XREF: .pdata:00000001400E0A60↑o
                align 20h
; Exported entry 3080. wcsncpy
; [00000049 BYTES: COLLAPSED FUNCTION wcsncpy. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D3D09:                         ; DATA XREF: .pdata:00000001400E0A6C↑o
                align 10h
; Exported entry 3082. wcsnlen
; [0000001E BYTES: COLLAPSED FUNCTION wcsnlen. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D3D2F:                         ; DATA XREF: .pdata:00000001400E0A78↑o
                align 20h
; Exported entry 3083. wcsrchr

; =============== S U B R O U T I N E =======================================


