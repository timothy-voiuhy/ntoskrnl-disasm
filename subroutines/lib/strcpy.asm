strcpy          proc near               ; DATA XREF: .pdata:00000001400E0958↑o
                mov     r11, rcx

loc_1403D3273:                          ; CODE XREF: strcat+C↑j
                                        ; strcat+4D↑j ...
                sub     rcx, rdx
                test    dl, 7
                jz      short loc_1403D329A

loc_1403D327B:                          ; CODE XREF: strcpy+1A↓j
                mov     al, [rdx]
                mov     [rdx+rcx], al
                test    al, al
                jz      short loc_1403D328E
                inc     rdx
                test    dl, 7
                jnz     short loc_1403D327B
                jmp     short loc_1403D329A
; ---------------------------------------------------------------------------

loc_1403D328E:                          ; CODE XREF: strcpy+12↑j
                mov     rax, r11
                retn
; ---------------------------------------------------------------------------

loc_1403D3292:                          ; CODE XREF: strcpy+51↓j
                mov     [rdx+rcx], rax
                add     rdx, 8

loc_1403D329A:                          ; CODE XREF: strcpy+9↑j
                                        ; strcpy+1C↑j ...
                mov     rax, [rdx]
                mov     r9, 7EFEFEFEFEFEFEFFh
                add     r9, rax
                mov     r10, rax
                xor     r10, 0FFFFFFFFFFFFFFFFh
                xor     r10, r9
                mov     r9, 8101010101010100h
                test    r9, r10
                jz      short loc_1403D3292
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3323
                inc     rdx
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3323
                inc     rdx
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3323
                inc     rdx
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3323
                inc     rdx
                shr     rax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3323
                inc     rdx
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3323
                inc     rdx
                shr     eax, 10h
                test    al, al
                mov     [rdx+rcx], al
                jz      short loc_1403D3323
                inc     rdx
                test    ah, ah
                mov     [rdx+rcx], ah
                jz      short loc_1403D3323
                inc     rdx
                jmp     loc_1403D329A
; ---------------------------------------------------------------------------

loc_1403D3323:                          ; CODE XREF: strcpy+58↑j
                                        ; strcpy+62↑j ...
                mov     rax, r11
                retn
strcpy          endp

; ---------------------------------------------------------------------------
algn_1403D3327:                         ; DATA XREF: .pdata:00000001400E0958↑o
                align 10h
; Exported entry 3042. strchr

; =============== S U B R O U T I N E =======================================


