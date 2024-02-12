wcsncat         proc near               ; DATA XREF: .pdata:00000001400E0A54↑o
                mov     r10, rcx
                xor     r11d, r11d

loc_1403D3C36:                          ; CODE XREF: wcsncat+13↓j
                movzx   eax, word ptr [rcx]
                mov     r9, rcx
                add     rcx, 2
                test    ax, ax
                jnz     short loc_1403D3C36
                jmp     short loc_1403D3C5E
; ---------------------------------------------------------------------------

loc_1403D3C47:                          ; CODE XREF: wcsncat+31↓j
                movzx   eax, word ptr [rdx]
                dec     r8
                mov     [r9], ax
                lea     rdx, [rdx+2]
                add     r9, 2
                test    ax, ax
                jz      short loc_1403D3C67

loc_1403D3C5E:                          ; CODE XREF: wcsncat+15↑j
                test    r8, r8
                jnz     short loc_1403D3C47
                mov     [r9], r11w

loc_1403D3C67:                          ; CODE XREF: wcsncat+2C↑j
                mov     rax, r10
                retn
wcsncat         endp

; ---------------------------------------------------------------------------
                align 4
algn_1403D3C6C:                         ; DATA XREF: .pdata:00000001400E0A54↑o
                align 20h
; Exported entry 3079. wcsncmp

; =============== S U B R O U T I N E =======================================


