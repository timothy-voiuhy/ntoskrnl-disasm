KeInitializeTriageDumpDataArray proc near
                                        ; CODE XREF: sub_1407C7C68+47↓p
                                        ; DATA XREF: .pdata:00000001400DF908↑o
                xor     r8d, r8d
                test    rcx, rcx
                jz      short loc_1403C9F45
                cmp     edx, 40h ; '@'
                jb      short loc_1403C9F4C
                lea     eax, [rdx-30h]
                mov     [rcx+8], rcx
                shr     eax, 4
                mov     [rcx+14h], eax
                xor     eax, eax
                mov     [rcx], rcx
                mov     [rcx+10h], r8d
                mov     [rcx+18h], r8d
                mov     qword ptr [rcx+1Ch], 2000000h
                mov     [rcx+28h], r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C9F45:                          ; CODE XREF: KeInitializeTriageDumpDataArray+6↑j
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403C9F4C:                          ; CODE XREF: KeInitializeTriageDumpDataArray+B↑j
                mov     eax, 0C0000023h
                retn
KeInitializeTriageDumpDataArray endp
