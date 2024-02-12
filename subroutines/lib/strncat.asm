strncat         proc near               ; DATA XREF: .pdata:00000001400E0988↑o
                mov     r11, rcx
                or      r8, r8
                jz      loc_1403D35AB
                test    cl, 7
                jz      short loc_1403D3510

loc_1403D3501:                          ; CODE XREF: strncat+1D↓j
                mov     al, [rcx]
                test    al, al
                jz      short loc_1403D3586
                inc     rcx
                test    cl, 7
                jnz     short loc_1403D3501
                nop

loc_1403D3510:                          ; CODE XREF: strncat+F↑j
                                        ; strncat+4B↓j ...
                mov     rax, [rcx]
                mov     r10, rax
                mov     r9, 7EFEFEFEFEFEFEFFh
                add     r9, r10
                xor     r10, 0FFFFFFFFFFFFFFFFh
                xor     r10, r9
                add     rcx, 8
                mov     r9, 8101010101010100h
                test    r9, r10
                jz      short loc_1403D3510
                sub     rcx, 8
                test    al, al
                jz      short loc_1403D3586
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3586
                inc     rcx
                shr     rax, 10h
                test    al, al
                jz      short loc_1403D3586
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3586
                inc     rcx
                shr     rax, 10h
                test    al, al
                jz      short loc_1403D3586
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3586
                inc     rcx
                shr     eax, 10h
                test    al, al
                jz      short loc_1403D3586
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3586
                inc     rcx
                jmp     short loc_1403D3510
; ---------------------------------------------------------------------------

loc_1403D3586:                          ; CODE XREF: strncat+15↑j
                                        ; strncat+53↑j ...
                sub     rcx, rdx
                test    dl, 7
                jz      short loc_1403D35B8

loc_1403D358E:                          ; CODE XREF: strncat+B2↓j
                mov     al, [rdx]
                mov     [rdx+rcx], al
                test    al, al
                jz      short loc_1403D35AB
                inc     rdx
                dec     r8
                jz      short loc_1403D35A6
                test    dl, 7
                jnz     short loc_1403D358E
                jmp     short loc_1403D35B8
; ---------------------------------------------------------------------------

loc_1403D35A6:                          ; CODE XREF: strncat+AD↑j
                xor     al, al
                mov     [rdx+rcx], al

loc_1403D35AB:                          ; CODE XREF: strncat+6↑j
                                        ; strncat+A5↑j
                mov     rax, r11
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403D35B0:                          ; CODE XREF: strncat+F5↓j
                mov     [rdx+rcx], rax
                add     rdx, 8

loc_1403D35B8:                          ; CODE XREF: strncat+9C↑j
                                        ; strncat+B4↑j ...
                mov     rax, [rdx]
                sub     r8, 8
                jb      short loc_1403D35E7
                mov     r9, 7EFEFEFEFEFEFEFFh
                add     r9, rax
                mov     r10, rax
                xor     r10, 0FFFFFFFFFFFFFFFFh
                xor     r10, r9
                mov     r9, 8101010101010100h
                test    r9, r10
                jz      short loc_1403D35B0

loc_1403D35E7:                          ; CODE XREF: strncat+CF↑j
                add     r8, 8
                jz      loc_1403D367C
                test    al, al
                mov     [rdx+rcx], al
                jz      loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                shr     eax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jz      short loc_1403D367C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3681
                inc     rdx
                dec     r8
                jnz     loc_1403D35B8

loc_1403D367C:                          ; CODE XREF: strncat+FB↑j
                                        ; strncat+112↑j ...
                xor     al, al
                mov     [rdx+rcx], al

loc_1403D3681:                          ; CODE XREF: strncat+106↑j
                                        ; strncat+119↑j ...
                mov     rax, r11
                retn
strncat         endp

; ---------------------------------------------------------------------------
algn_1403D3685:                         ; DATA XREF: .pdata:00000001400E0988↑o
                align 20h
; Exported entry 3050. strncpy

; =============== S U B R O U T I N E =======================================


