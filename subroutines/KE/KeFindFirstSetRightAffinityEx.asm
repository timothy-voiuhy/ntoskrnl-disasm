KeFindFirstSetRightAffinityEx proc near ; CODE XREF: sub_140256A10+1E0E5F↑p
                                        ; sub_140259F00+1DE45E↑p ...
                movzx   r9d, word ptr [rcx]
                xor     r10d, r10d
                movzx   edx, r10w
                test    r9d, r9d
                jz      short loc_140513719

loc_140513700:                          ; CODE XREF: KeFindFirstSetRightAffinityEx+27↓j
                movsx   rax, dx
                mov     r8, [rcx+rax*8+8]
                test    r8, r8
                jnz     short loc_14051371E
                inc     dx
                movsx   eax, dx
                cmp     eax, r9d
                jl      short loc_140513700

loc_140513719:                          ; CODE XREF: KeFindFirstSetRightAffinityEx+E↑j
                or      eax, 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14051371E:                          ; CODE XREF: KeFindFirstSetRightAffinityEx+1C↑j
                bsf     rcx, r8
                movsx   eax, dx
                shl     eax, 6
                add     eax, ecx
                lea     rcx, dword_140D024D0
                mov     eax, [rcx+rax*4]
                retn
KeFindFirstSetRightAffinityEx endp
