KeFindFirstSetLeftGroupAffinity proc near
                                        ; CODE XREF: sub_1403AB910:loc_1403ABB16↓p
                                        ; sub_14070C958+8B↓p ...
                mov     rax, rcx
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_1403555A4
                movzx   eax, word ptr [rax+8]
                bsr     rcx, rcx
                shl     eax, 6
                add     eax, ecx
                lea     rcx, dword_140D024D0
                mov     eax, [rcx+rax*4]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403555A4:                          ; CODE XREF: KeFindFirstSetLeftGroupAffinity+9↑j
                or      eax, 0FFFFFFFFh
                retn
KeFindFirstSetLeftGroupAffinity endp
