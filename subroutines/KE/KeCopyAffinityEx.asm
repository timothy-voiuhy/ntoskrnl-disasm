KeCopyAffinityEx proc near              ; CODE XREF: sub_14024EFB0+3F0↑p
                                        ; sub_140250E60+416↑p ...
                movzx   eax, word ptr [rdx]
                mov     r8, rdx
                mov     [rcx], ax
                mov     r9, rcx
                movzx   eax, word ptr [rdx+2]
                mov     [rcx+2], ax
                xor     eax, eax
                mov     [rcx+4], eax
                cmp     ax, [rdx]
                jnb     short locret_14028EC3E
                xchg    ax, ax

loc_14028EC20:                          ; CODE XREF: KeCopyAffinityEx+3C↓j
                movzx   ecx, ax
                inc     ax
                lea     rdx, ds:0[rcx*8]
                mov     rcx, [rdx+r8+8]
                mov     [rdx+r9+8], rcx
                cmp     ax, [r8]
                jb      short loc_14028EC20

locret_14028EC3E:                       ; CODE XREF: KeCopyAffinityEx+1C↑j
                retn
KeCopyAffinityEx endp
