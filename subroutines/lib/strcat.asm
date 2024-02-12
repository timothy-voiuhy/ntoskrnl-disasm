strcat          proc near               ; DATA XREF: .pdata:00000001400E094C↑o
                mov     r11, rcx
                test    cl, 7
                jz      short loc_1403D31EA

loc_1403D31D8:                          ; CODE XREF: strcat+18↓j
                mov     al, [rcx]
                test    al, al
                jz      loc_1403D3273
                inc     rcx
                test    cl, 7
                jnz     short loc_1403D31D8

loc_1403D31EA:                          ; CODE XREF: strcat+6↑j
                                        ; strcat+45↓j ...
                mov     rax, [rcx]
                mov     r10, rax
                mov     r9, 7EFEFEFEFEFEFEFFh
                add     r9, r10
                xor     r10, 0FFFFFFFFFFFFFFFFh
                xor     r10, r9
                add     rcx, 8
                mov     r9, 8101010101010100h
                test    r9, r10
                jz      short loc_1403D31EA
                sub     rcx, 8
                test    al, al
                jz      short loc_1403D3273
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3273
                inc     rcx
                shr     rax, 10h
                test    al, al
                jz      short loc_1403D3273
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3273
                inc     rcx
                shr     rax, 10h
                test    al, al
                jz      short loc_1403D3273
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3273
                inc     rcx
                shr     eax, 10h
                test    al, al
                jz      short loc_1403D3273
                inc     rcx
                test    ah, ah
                jz      short loc_1403D3273
                inc     rcx
                jmp     short loc_1403D31EA
strcat          endp

; ---------------------------------------------------------------------------
byte_1403D3260  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E094C↑o
                align 10h
; Exported entry 3044. strcpy

; =============== S U B R O U T I N E =======================================


