strcmp          proc near               ; CODE XREF: sub_1409527C0+1D2↓p
                                        ; sub_1409549D0+478↓p ...
                sub     rdx, rcx
                mov     r9, rdx
                test    cl, 7
                jz      short loc_1403D3396

loc_1403D337B:                          ; CODE XREF: strcmp+23↓j
                                        ; strcmp+3E↓j ...
                mov     al, [rcx]
                mov     dl, [r9+rcx]
                cmp     al, dl
                jnz     short loc_1403D33DB
                inc     rcx
                test    al, al
                jz      short loc_1403D33E3
                test    rcx, 7
                jnz     short loc_1403D337B
                nop

loc_1403D3396:                          ; CODE XREF: strcmp+9↑j
                mov     r11, 8101010101010100h

loc_1403D33A0:                          ; CODE XREF: strcmp+67↓j
                                        ; strcmp+A3↓j
                lea     rdx, [r9+rcx]
                and     dx, 0FFFh
                cmp     dx, 0FF8h
                ja      short loc_1403D337B
                mov     rax, [rcx]
                mov     rdx, [r9+rcx]
                cmp     rax, rdx
                jnz     short loc_1403D337B
                mov     r10, 7EFEFEFEFEFEFEFFh
                add     r10, rdx
                xor     rax, 0FFFFFFFFFFFFFFFFh
                add     rcx, 8
                xor     rax, r10
                test    r11, rax
                jz      short loc_1403D33A0
                jmp     short loc_1403D33EA
; ---------------------------------------------------------------------------

loc_1403D33DB:                          ; CODE XREF: strcmp+13↑j
                sbb     rax, rax
                sbb     rax, 0FFFFFFFFFFFFFFFFh
                retn
; ---------------------------------------------------------------------------

loc_1403D33E3:                          ; CODE XREF: strcmp+1A↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 3 dup(66h), 90h
; ---------------------------------------------------------------------------

loc_1403D33EA:                          ; CODE XREF: strcmp+69↑j
                test    dl, dl
                jz      short loc_1403D3415
                test    dh, dh
                jz      short loc_1403D3415
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D3415
                test    dh, dh
                jz      short loc_1403D3415
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D3415
                test    dh, dh
                jz      short loc_1403D3415
                shr     edx, 10h
                test    dl, dl
                jz      short loc_1403D3415
                test    dh, dh
                jnz     short loc_1403D33A0

loc_1403D3415:                          ; CODE XREF: strcmp+7C↑j
                                        ; strcmp+80↑j ...
                xor     eax, eax
                retn
strcmp          endp

; ---------------------------------------------------------------------------
                sbb     rax, rax
                sbb     rax, 0FFFFFFFFFFFFFFFFh
                retn
; ---------------------------------------------------------------------------
byte_1403D3420  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0970↑o
                align 10h
; Exported entry 3046. strlen

; =============== S U B R O U T I N E =======================================


