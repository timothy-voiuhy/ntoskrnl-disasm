KeFlushCurrentTbImmediately proc near   ; CODE XREF: sub_1403BBB30+7↓p
                                        ; sub_1409950D0:loc_140995316↓p ...
                mov     rcx, cr4
                test    rcx, 20080h
                jz      short loc_1403A0A8C
                mov     rax, rcx
                btc     rax, 7
                mov     cr4, rax
                mov     cr4, rcx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403A0A8C:                          ; CODE XREF: KeFlushCurrentTbImmediately+A↑j
                mov     rax, cr3
                mov     cr3, rax
                retn
KeFlushCurrentTbImmediately endp
