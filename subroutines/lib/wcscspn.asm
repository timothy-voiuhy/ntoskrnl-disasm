wcscspn         proc near               ; DATA XREF: .pdata:00000001400E0A3C↑o
                cmp     word ptr [rcx], 0
                mov     r8, rdx
                mov     rax, rcx
                jz      short loc_1403D3BFE
                movzx   r10d, word ptr [rdx]

loc_1403D3BD0:                          ; CODE XREF: wcscspn+3C↓j
                mov     r9, r8
                test    r10w, r10w
                jz      short loc_1403D3BF4
                movzx   r11d, word ptr [rax]
                movzx   edx, r10w

loc_1403D3BE1:                          ; CODE XREF: wcscspn+32↓j
                cmp     dx, r11w
                jz      short loc_1403D3BFE
                add     r9, 2
                movzx   edx, word ptr [r9]
                test    dx, dx
                jnz     short loc_1403D3BE1

loc_1403D3BF4:                          ; CODE XREF: wcscspn+17↑j
                add     rax, 2
                cmp     word ptr [rax], 0
                jnz     short loc_1403D3BD0

loc_1403D3BFE:                          ; CODE XREF: wcscspn+A↑j
                                        ; wcscspn+25↑j
                sub     rax, rcx
                sar     rax, 1
                retn
wcscspn         endp

; ---------------------------------------------------------------------------
                align 2
algn_1403D3C06:                         ; DATA XREF: .pdata:00000001400E0A3C↑o
                align 10h
; Exported entry 3076. wcslen
; [00000019 BYTES: COLLAPSED FUNCTION wcslen. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
algn_1403D3C2A:                         ; DATA XREF: .pdata:00000001400E0A48↑o
                align 10h
; Exported entry 3077. wcsncat

; =============== S U B R O U T I N E =======================================


