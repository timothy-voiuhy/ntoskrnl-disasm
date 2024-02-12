MmMdlPageContentsState proc near        ; CODE XREF: sub_14059E244+B9↓p
                                        ; sub_1405A1844+6A↓p ...
                movzx   r8d, word ptr [rcx+0Ah]
                cmp     edx, 2
                jnz     short loc_140340C55
                mov     eax, r8d
                shr     eax, 0Eh
                and     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140340C55:                          ; CODE XREF: MmMdlPageContentsState+8↑j
                movzx   eax, r8w
                mov     r9d, 0FFFFBFFFh
                and     ax, r9w
                mov     r9d, 4000h
                or      r8w, r9w
                cmp     edx, 1
                cmovnz  r8w, ax
                mov     eax, edx
                mov     [rcx+0Ah], r8w
                retn
MmMdlPageContentsState endp
