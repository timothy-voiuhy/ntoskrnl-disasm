memcmp          proc near               ; CODE XREF: RtlEqualSid+1B↑p
                                        ; sub_14021BF70+A1↑p ...
                sub     rdx, rcx
                cmp     r8, 8
                jb      short loc_1403D264B
                test    cl, 7
                jz      short loc_1403D2642
                xchg    ax, ax

loc_1403D2630:                          ; CODE XREF: memcmp+20↓j
                mov     al, [rcx]
                cmp     al, [rcx+rdx]
                jnz     short loc_1403D2663
                inc     rcx
                dec     r8
                test    cl, 7
                jnz     short loc_1403D2630

loc_1403D2642:                          ; CODE XREF: memcmp+C↑j
                mov     r9, r8
                shr     r9, 3
                jnz     short loc_1403D266A

loc_1403D264B:                          ; CODE XREF: memcmp+7↑j
                                        ; memcmp+8E↓j ...
                test    r8, r8
                jz      short loc_1403D265F

loc_1403D2650:                          ; CODE XREF: memcmp+3D↓j
                mov     al, [rcx]
                cmp     al, [rcx+rdx]
                jnz     short loc_1403D2663
                inc     rcx
                dec     r8
                jnz     short loc_1403D2650

loc_1403D265F:                          ; CODE XREF: memcmp+2E↑j
                xor     rax, rax
                retn
; ---------------------------------------------------------------------------

loc_1403D2663:                          ; CODE XREF: memcmp+15↑j
                                        ; memcmp+35↑j
                sbb     eax, eax
                sbb     eax, 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403D266A:                          ; CODE XREF: memcmp+29↑j
                shr     r9, 2
                jz      short loc_1403D26A7

loc_1403D2670:                          ; CODE XREF: memcmp+81↓j
                mov     rax, [rcx]
                cmp     rax, [rcx+rdx]
                jnz     short loc_1403D26D4
                mov     rax, [rcx+8]
                cmp     rax, [rcx+rdx+8]
                jnz     short loc_1403D26D0
                mov     rax, [rcx+10h]
                cmp     rax, [rcx+rdx+10h]
                jnz     short loc_1403D26CC
                mov     rax, [rcx+18h]
                cmp     rax, [rcx+rdx+18h]
                jnz     short loc_1403D26C8
                add     rcx, 20h ; ' '
                dec     r9
                jnz     short loc_1403D2670
                and     r8, 1Fh

loc_1403D26A7:                          ; CODE XREF: memcmp+4E↑j
                mov     r9, r8
                shr     r9, 3
                jz      short loc_1403D264B

loc_1403D26B0:                          ; CODE XREF: memcmp+A0↓j
                mov     rax, [rcx]
                cmp     rax, [rcx+rdx]
                jnz     short loc_1403D26D4
                add     rcx, 8
                dec     r9
                jnz     short loc_1403D26B0
                and     r8, 7
                jmp     short loc_1403D264B
; ---------------------------------------------------------------------------

loc_1403D26C8:                          ; CODE XREF: memcmp+78↑j
                add     rcx, 8

loc_1403D26CC:                          ; CODE XREF: memcmp+6D↑j
                add     rcx, 8

loc_1403D26D0:                          ; CODE XREF: memcmp+62↑j
                add     rcx, 8

loc_1403D26D4:                          ; CODE XREF: memcmp+57↑j
                                        ; memcmp+97↑j
                mov     rcx, [rdx+rcx]
                bswap   rax
                bswap   rcx
                cmp     rax, rcx
                sbb     eax, eax
                sbb     eax, 0FFFFFFFFh
                retn
memcmp          endp

; ---------------------------------------------------------------------------
algn_1403D26E7:                         ; DATA XREF: .pdata:00000001400E088C↑o
                align 20h
; Exported entry 3031. qsort

; =============== S U B R O U T I N E =======================================


