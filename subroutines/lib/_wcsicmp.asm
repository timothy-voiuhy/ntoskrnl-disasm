_wcsicmp        proc near               ; CODE XREF: sub_14033B748+10D↑p
                                        ; sub_14033C8C0+FC↑p ...
                mov     r9, rcx
                mov     r10, rdx
                sub     r9, rdx

loc_1403D1D19:                          ; CODE XREF: _wcsicmp+40↓j
                movzx   r8d, word ptr [r9+r10]
                movzx   ecx, word ptr [r10]
                lea     r10, [r10+2]
                lea     eax, [r8-41h]
                cmp     ax, 19h
                lea     edx, [r8+20h]
                lea     eax, [rcx-41h]
                cmova   dx, r8w
                cmp     ax, 19h
                lea     r8d, [rcx+20h]
                cmova   r8w, cx
                test    dx, dx
                jz      short loc_1403D1D52
                cmp     dx, r8w
                jz      short loc_1403D1D19

loc_1403D1D52:                          ; CODE XREF: _wcsicmp+3A↑j
                movzx   ecx, r8w
                movzx   eax, dx
                sub     eax, ecx
                retn
_wcsicmp        endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D1D5D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0748↑o
; Exported entry 2995. _wcslwr

; =============== S U B R O U T I N E =======================================


