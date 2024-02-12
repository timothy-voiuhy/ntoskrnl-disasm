strrchr         proc near               ; DATA XREF: .pdata:00000001400E09AC↑o
                mov     r9, rcx
                xor     r8d, r8d

loc_1403D3836:                          ; CODE XREF: strrchr+D↓j
                mov     al, [rcx]
                inc     rcx
                test    al, al
                jnz     short loc_1403D3836

loc_1403D383F:                          ; CODE XREF: strrchr+1B↓j
                dec     rcx
                mov     al, [rcx]
                cmp     rcx, r9
                jz      short loc_1403D384D
                cmp     al, dl
                jnz     short loc_1403D383F

loc_1403D384D:                          ; CODE XREF: strrchr+17↑j
                cmp     al, dl
                cmovz   r8, rcx
                mov     rax, r8
                retn
strrchr         endp

; ---------------------------------------------------------------------------
                align 8
algn_1403D3858:                         ; DATA XREF: .pdata:00000001400E09AC↑o
                align 20h
; Exported entry 3054. strspn

; =============== S U B R O U T I N E =======================================


