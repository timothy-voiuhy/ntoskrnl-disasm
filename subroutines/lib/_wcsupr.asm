_wcsupr         proc near               ; CODE XREF: PfFileInfoNotify:loc_140270489↑p
                                        ; sub_1407BEBD0+472↓p ...
                movzx   edx, word ptr [rcx]
                mov     r8, rcx
                jmp     short loc_1403D2051
; ---------------------------------------------------------------------------

loc_1403D2038:                          ; CODE XREF: _wcsupr+24↓j
                lea     eax, [rdx-61h]
                cmp     ax, 19h
                ja      short loc_1403D2049
                sub     dx, 20h ; ' '
                mov     [r8], dx

loc_1403D2049:                          ; CODE XREF: _wcsupr+F↑j
                add     r8, 2
                movzx   edx, word ptr [r8]

loc_1403D2051:                          ; CODE XREF: _wcsupr+6↑j
                test    dx, dx
                jnz     short loc_1403D2038
                mov     rax, rcx
                retn
_wcsupr         endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D205B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400E07A8↑o
; Exported entry 3005. _wtoi

; =============== S U B R O U T I N E =======================================


