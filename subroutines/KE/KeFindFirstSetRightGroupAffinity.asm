KeFindFirstSetRightGroupAffinity proc near
                                        ; CODE XREF: sub_1403002B8+76↑p
                                        ; sub_14030038C+8B↑p ...
                mov     rax, rcx
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_140300B04
                movzx   eax, word ptr [rax+8]
                bsf     rcx, rcx
                shl     eax, 6
                add     eax, ecx
                lea     rcx, dword_140D024D0
                mov     eax, [rcx+rax*4]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140300B04:                          ; CODE XREF: KeFindFirstSetRightGroupAffinity+9↑j
                or      eax, 0FFFFFFFFh
                retn
KeFindFirstSetRightGroupAffinity endp
