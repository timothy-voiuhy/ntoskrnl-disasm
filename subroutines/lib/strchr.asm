strchr          proc near               ; CODE XREF: sub_1407598AC+1A0↓p
                                        ; sub_14093379C+35↓p ...
                mov     al, [rcx]
                xor     r8d, r8d
                test    al, al
                jz      short loc_1403D3350
                mov     r9b, al

loc_1403D333C:                          ; CODE XREF: strchr+1E↓j
                mov     al, r9b
                cmp     r9b, dl
                jz      short loc_1403D3350
                inc     rcx
                mov     al, [rcx]
                mov     r9b, al
                test    al, al
                jnz     short loc_1403D333C

loc_1403D3350:                          ; CODE XREF: strchr+7↑j
                                        ; strchr+12↑j
                cmp     al, dl
                cmovz   r8, rcx
                mov     rax, r8
                retn
strchr          endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D335B  db 0Bh dup(0CCh)        ; DATA XREF: .pdata:00000001400E0964↑o
                align 10h
; Exported entry 3043. strcmp

; =============== S U B R O U T I N E =======================================


