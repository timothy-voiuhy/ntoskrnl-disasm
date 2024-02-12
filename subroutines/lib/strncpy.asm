strncpy         proc near               ; DATA XREF: .pdata:00000001400E0994↑o
                mov     r11, rcx
                or      r8, r8
                jz      short loc_1403D36CC
                sub     rcx, rdx
                test    dl, 7
                jz      short loc_1403D36D8

loc_1403D36B0:                          ; CODE XREF: strncpy+28↓j
                mov     al, [rdx]
                test    al, al
                mov     [rdx+rcx], al
                jz      loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D36CC
                test    dl, 7
                jnz     short loc_1403D36B0
                jmp     short loc_1403D36D8
; ---------------------------------------------------------------------------

loc_1403D36CC:                          ; CODE XREF: strncpy+6↑j
                                        ; strncpy+23↑j
                mov     rax, r11
                retn
; ---------------------------------------------------------------------------

loc_1403D36D0:                          ; CODE XREF: strncpy+65↓j
                mov     [rdx+rcx], rax
                add     rdx, 8

loc_1403D36D8:                          ; CODE XREF: strncpy+E↑j
                                        ; strncpy+2A↑j ...
                mov     rax, [rdx]
                sub     r8, 8
                jb      short loc_1403D3707
                mov     r9, 7EFEFEFEFEFEFEFFh
                add     r9, rax
                mov     r10, rax
                xor     r10, 0FFFFFFFFFFFFFFFFh
                xor     r10, r9
                mov     r9, 8101010101010100h
                test    r9, r10
                jz      short loc_1403D36D0

loc_1403D3707:                          ; CODE XREF: strncpy+3F↑j
                add     r8, 8
                jz      loc_1403D379C
                test    al, al
                mov     [rdx+rcx], al
                jz      loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                shr     eax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jz      short loc_1403D379C
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D37A0
                inc     rdx
                dec     r8
                jnz     loc_1403D36D8

loc_1403D379C:                          ; CODE XREF: strncpy+6B↑j
                                        ; strncpy+82↑j ...
                mov     rax, r11
                retn
; ---------------------------------------------------------------------------

loc_1403D37A0:                          ; CODE XREF: strncpy+17↑j
                                        ; strncpy+76↑j ...
                add     rcx, rdx
                xor     rdx, rdx
                cmp     r8, 10h
                jb      short loc_1403D37F1

loc_1403D37AC:                          ; CODE XREF: strncpy+119↓j
                test    cl, 7
                jz      short loc_1403D37BB
                inc     rcx
                mov     [rcx], dl
                dec     r8
                jmp     short loc_1403D37AC
; ---------------------------------------------------------------------------

loc_1403D37BB:                          ; CODE XREF: strncpy+10F↑j
                sub     r8, 20h ; ' '
                jb      short loc_1403D37DA

loc_1403D37C1:                          ; CODE XREF: strncpy+138↓j
                mov     [rcx], rdx
                mov     [rcx+8], rdx
                mov     [rcx+10h], rdx
                mov     [rcx+18h], rdx
                add     rcx, 20h ; ' '
                sub     r8, 20h ; ' '
                jnb     short loc_1403D37C1

loc_1403D37DA:                          ; CODE XREF: strncpy+11F↑j
                add     r8, 20h ; ' '

loc_1403D37DE:                          ; CODE XREF: strncpy+14B↓j
                sub     r8, 8
                jb      short loc_1403D37ED
                mov     [rcx], rdx
                add     rcx, 8
                jmp     short loc_1403D37DE
; ---------------------------------------------------------------------------

loc_1403D37ED:                          ; CODE XREF: strncpy+142↑j
                add     r8, 8

loc_1403D37F1:                          ; CODE XREF: strncpy+10A↑j
                                        ; strncpy+15C↓j
                sub     r8, 1
                jb      short loc_1403D37FE
                mov     [rcx], dl
                inc     rcx
                jmp     short loc_1403D37F1
; ---------------------------------------------------------------------------

loc_1403D37FE:                          ; CODE XREF: strncpy+155↑j
                mov     rax, r11
                retn
strncpy         endp

; ---------------------------------------------------------------------------
algn_1403D3802:                         ; DATA XREF: .pdata:00000001400E0994↑o
                align 10h
; Exported entry 3052. strnlen
; [00000018 BYTES: COLLAPSED FUNCTION strnlen. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D3829:                         ; DATA XREF: .pdata:00000001400E09A0↑o
                align 10h
; Exported entry 3053. strrchr

; =============== S U B R O U T I N E =======================================


