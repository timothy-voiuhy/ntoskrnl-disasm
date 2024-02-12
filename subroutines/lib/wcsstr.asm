wcsstr          proc near               ; CODE XREF: sub_1403BC9BC+35↑p
                                        ; sub_14059D520+30↓p ...
                xor     r11d, r11d
                mov     r10, rdx
                mov     r8, rcx
                cmp     [rdx], r11w
                jnz     short loc_1403D3DE4
                mov     rax, rcx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403D3DE4:                          ; CODE XREF: wcsstr+D↑j
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jz      short loc_1403D3E2B
                mov     r9, rcx
                sub     r9, r10

loc_1403D3DF2:                          ; CODE XREF: wcsstr+59↓j
                mov     rdx, r10
                test    ax, ax
                jz      short loc_1403D3E14

loc_1403D3DFA:                          ; CODE XREF: wcsstr+42↓j
                movzx   eax, word ptr [rdx]
                test    ax, ax
                jz      short loc_1403D3E2F
                cmp     [r9+rdx], ax
                jnz     short loc_1403D3E14
                add     rdx, 2
                cmp     [r9+rdx], r11w
                jnz     short loc_1403D3DFA

loc_1403D3E14:                          ; CODE XREF: wcsstr+28↑j
                                        ; wcsstr+37↑j
                cmp     [rdx], r11w
                jz      short loc_1403D3E2F
                add     r8, 2
                add     r9, 2
                movzx   eax, word ptr [r8]
                test    ax, ax
                jnz     short loc_1403D3DF2

loc_1403D3E2B:                          ; CODE XREF: wcsstr+1A↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D3E2F:                          ; CODE XREF: wcsstr+30↑j
                                        ; wcsstr+48↑j
                mov     rax, r8
                retn
wcsstr          endp

; ---------------------------------------------------------------------------
                align 4
algn_1403D3E34:                         ; DATA XREF: .pdata:00000001400E0A9C↑o
                align 20h
; Exported entry 3086. wcstombs

; =============== S U B R O U T I N E =======================================


