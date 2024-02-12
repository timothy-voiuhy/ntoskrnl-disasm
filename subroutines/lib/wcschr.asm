wcschr          proc near               ; CODE XREF: sub_14036CD08+95↑p
                                        ; sub_14059D520+55↓p ...
                jmp     short loc_1403D3B5B
; ---------------------------------------------------------------------------

loc_1403D3B52:                          ; CODE XREF: wcschr+11↓j
                cmp     ax, dx
                jz      short loc_1403D3B68
                add     rcx, 2

loc_1403D3B5B:                          ; CODE XREF: wcschr↑j
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jnz     short loc_1403D3B52
                cmp     ax, dx
                jnz     short loc_1403D3B6D

loc_1403D3B68:                          ; CODE XREF: wcschr+5↑j
                mov     rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D3B6D:                          ; CODE XREF: wcschr+16↑j
                xor     eax, eax
                retn
wcschr          endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403D3B71:                         ; DATA XREF: .pdata:00000001400E0A24↑o
                align 20h
; Exported entry 3072. wcscmp

; =============== S U B R O U T I N E =======================================


