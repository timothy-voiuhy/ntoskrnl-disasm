KeIsEmptyAffinityEx proc near           ; CODE XREF: sub_14024EFB0+425↑p
                                        ; sub_1402512E0+14B↑p ...
                movzx   r8d, word ptr [rcx]
                xor     eax, eax
                cmp     ax, r8w
                jnb     short loc_140259624
                nop     dword ptr [rax+00h]

loc_140259610:                          ; CODE XREF: KeIsEmptyAffinityEx+22↓j
                movzx   edx, ax
                cmp     qword ptr [rcx+rdx*8+8], 0
                jnz     short loc_14025962B
                inc     ax
                cmp     ax, r8w
                jb      short loc_140259610

loc_140259624:                          ; CODE XREF: KeIsEmptyAffinityEx+A↑j
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14025962B:                          ; CODE XREF: KeIsEmptyAffinityEx+19↑j
                xor     eax, eax
                retn
KeIsEmptyAffinityEx endp
