IoRemoveLinkShareAccessEx proc near     ; CODE XREF: IoRemoveShareAccess+A↑p
                                        ; sub_14069895C+42↑p ...
                mov     rax, [rcx+0D0h]
                test    rax, rax
                jnz     short loc_140698A91

loc_140698A2C:                          ; CODE XREF: IoRemoveLinkShareAccessEx+75↓j
                cmp     byte ptr [rcx+4Ah], 0
                jnz     short loc_140698A40
                cmp     byte ptr [rcx+4Bh], 0
                jnz     short loc_140698A40
                cmp     byte ptr [rcx+4Ch], 0
                jnz     short loc_140698A40

locret_140698A3E:                       ; CODE XREF: IoRemoveLinkShareAccessEx+55↓j
                                        ; IoRemoveLinkShareAccessEx+69↓j
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140698A40:                          ; CODE XREF: IoRemoveLinkShareAccessEx+10↑j
                                        ; IoRemoveLinkShareAccessEx+16↑j ...
                dec     dword ptr [rdx]
                cmp     byte ptr [rcx+4Ah], 0
                jz      short loc_140698A4B
                dec     dword ptr [rdx+4]

loc_140698A4B:                          ; CODE XREF: IoRemoveLinkShareAccessEx+26↑j
                cmp     byte ptr [rcx+4Bh], 0
                jnz     short loc_140698A99

loc_140698A51:                          ; CODE XREF: IoRemoveLinkShareAccessEx+7C↓j
                cmp     byte ptr [rcx+4Dh], 0
                jz      short loc_140698A5A
                dec     dword ptr [rdx+10h]

loc_140698A5A:                          ; CODE XREF: IoRemoveLinkShareAccessEx+35↑j
                cmp     byte ptr [rcx+4Eh], 0
                jz      short loc_140698A63
                dec     dword ptr [rdx+14h]

loc_140698A63:                          ; CODE XREF: IoRemoveLinkShareAccessEx+3E↑j
                cmp     byte ptr [rcx+4Ch], 0
                jnz     short loc_140698A9E

loc_140698A69:                          ; CODE XREF: IoRemoveLinkShareAccessEx+81↓j
                cmp     byte ptr [rcx+4Fh], 0
                jz      short loc_140698A72
                dec     dword ptr [rdx+18h]

loc_140698A72:                          ; CODE XREF: IoRemoveLinkShareAccessEx+4D↑j
                test    r8, r8
                jz      short locret_140698A3E
                dec     dword ptr [r8]
                test    r9b, r9b
                js      short loc_140698A85
                cmp     byte ptr [rcx+4Ch], 0
                jnz     short loc_140698AA3

loc_140698A85:                          ; CODE XREF: IoRemoveLinkShareAccessEx+5D↑j
                                        ; IoRemoveLinkShareAccessEx+87↓j
                cmp     byte ptr [rcx+4Fh], 0
                jz      short locret_140698A3E
                dec     dword ptr [r8+8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140698A91:                          ; CODE XREF: IoRemoveLinkShareAccessEx+A↑j
                mov     eax, [rax]
                test    al, 1
                jz      short loc_140698A2C
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140698A99:                          ; CODE XREF: IoRemoveLinkShareAccessEx+2F↑j
                dec     dword ptr [rdx+8]
                jmp     short loc_140698A51
; ---------------------------------------------------------------------------

loc_140698A9E:                          ; CODE XREF: IoRemoveLinkShareAccessEx+47↑j
                dec     dword ptr [rdx+0Ch]
                jmp     short loc_140698A69
; ---------------------------------------------------------------------------

loc_140698AA3:                          ; CODE XREF: IoRemoveLinkShareAccessEx+63↑j
                dec     dword ptr [r8+4]
                jmp     short loc_140698A85
IoRemoveLinkShareAccessEx endp
