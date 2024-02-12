IoUpdateLinkShareAccessEx proc near     ; CODE XREF: IoUpdateShareAccess+A↓p
                                        ; IoUpdateLinkShareAccess+7↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+0D0h]
                xor     r10d, r10d
                test    rax, rax
                jnz     short loc_14060A345

loc_14060A2DF:                          ; CODE XREF: IoUpdateLinkShareAccessEx+7B↓j
                mov     al, r10b

loc_14060A2E2:                          ; CODE XREF: IoUpdateLinkShareAccessEx+7D↓j
                cmp     [rcx+4Ah], r10b
                jnz     short loc_14060A2F6
                cmp     [rcx+4Bh], r10b
                jnz     short loc_14060A2F6
                cmp     [rcx+4Ch], r10b
                jnz     short loc_14060A2F6

locret_14060A2F4:                       ; CODE XREF: IoUpdateLinkShareAccessEx+28↓j
                                        ; IoUpdateLinkShareAccessEx+59↓j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14060A2F6:                          ; CODE XREF: IoUpdateLinkShareAccessEx+16↑j
                                        ; IoUpdateLinkShareAccessEx+1C↑j ...
                test    al, al
                jnz     short locret_14060A2F4
                inc     dword ptr [rdx]
                movzx   eax, byte ptr [rcx+4Ah]
                add     [rdx+4], eax
                movzx   eax, byte ptr [rcx+4Bh]
                add     [rdx+8], eax
                movzx   eax, byte ptr [rcx+4Dh]
                add     [rdx+10h], eax
                movzx   eax, byte ptr [rcx+4Eh]
                add     [rdx+14h], eax
                movzx   eax, byte ptr [rcx+4Ch]
                add     [rdx+0Ch], eax
                movzx   eax, byte ptr [rcx+4Fh]
                add     [rdx+18h], eax
                test    r8, r8
                jz      short locret_14060A2F4
                inc     dword ptr [r8]
                test    r9b, r9b
                js      short loc_14060A33B
                movzx   eax, byte ptr [rcx+4Ch]
                add     [r8+4], eax

loc_14060A33B:                          ; CODE XREF: IoUpdateLinkShareAccessEx+61↑j
                movzx   eax, byte ptr [rcx+4Fh]
                add     [r8+8], eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14060A345:                          ; CODE XREF: IoUpdateLinkShareAccessEx+D↑j
                mov     eax, [rax]
                test    al, 1
                mov     al, 1
                jz      short loc_14060A2DF
                jmp     short loc_14060A2E2
IoUpdateLinkShareAccessEx endp
