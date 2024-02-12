strlen          proc near               ; DATA XREF: .pdata:00000001400E097C↑o
                mov     rax, rcx
                neg     rcx
                test    rax, 7
                jz      short loc_1403D344D
                xchg    ax, ax

loc_1403D3440:                          ; CODE XREF: strlen+1B↓j
                mov     dl, [rax]
                inc     rax
                test    dl, dl
                jz      short loc_1403D34A8
                test    al, 7
                jnz     short loc_1403D3440

loc_1403D344D:                          ; CODE XREF: strlen+C↑j
                mov     r8, 7EFEFEFEFEFEFEFFh
                mov     r11, 8101010101010100h

loc_1403D3461:                          ; CODE XREF: strlen+47↓j
                                        ; strlen+76↓j
                mov     rdx, [rax]
                mov     r9, r8
                add     rax, 8
                add     r9, rdx
                not     rdx
                xor     rdx, r9
                and     rdx, r11
                jz      short loc_1403D3461
                mov     rdx, [rax-8]
                test    dl, dl
                jz      short loc_1403D34D2
                test    dh, dh
                jz      short loc_1403D34CC
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D34C6
                test    dh, dh
                jz      short loc_1403D34C0
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D34BA
                test    dh, dh
                jz      short loc_1403D34B4
                shr     edx, 10h
                test    dl, dl
                jz      short loc_1403D34AE
                test    dh, dh
                jnz     short loc_1403D3461

loc_1403D34A8:                          ; CODE XREF: strlen+17↑j
                lea     rax, [rax+rcx-1]
                retn
; ---------------------------------------------------------------------------

loc_1403D34AE:                          ; CODE XREF: strlen+72↑j
                lea     rax, [rax+rcx-2]
                retn
; ---------------------------------------------------------------------------

loc_1403D34B4:                          ; CODE XREF: strlen+6B↑j
                lea     rax, [rax+rcx-3]
                retn
; ---------------------------------------------------------------------------

loc_1403D34BA:                          ; CODE XREF: strlen+67↑j
                lea     rax, [rax+rcx-4]
                retn
; ---------------------------------------------------------------------------

loc_1403D34C0:                          ; CODE XREF: strlen+5F↑j
                lea     rax, [rax+rcx-5]
                retn
; ---------------------------------------------------------------------------

loc_1403D34C6:                          ; CODE XREF: strlen+5B↑j
                lea     rax, [rax+rcx-6]
                retn
; ---------------------------------------------------------------------------

loc_1403D34CC:                          ; CODE XREF: strlen+53↑j
                lea     rax, [rax+rcx-7]
                retn
; ---------------------------------------------------------------------------

loc_1403D34D2:                          ; CODE XREF: strlen+4F↑j
                lea     rax, [rax+rcx-8]
                retn
strlen          endp

; ---------------------------------------------------------------------------
byte_1403D34D8  db 0Eh dup(0CCh)        ; DATA XREF: .pdata:00000001400E097C↑o
                align 10h
; Exported entry 3047. strncat

; =============== S U B R O U T I N E =======================================


