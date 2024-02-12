KeQueryNodeActiveAffinity proc near     ; CODE XREF: sub_1402FDEC4+47↑p
                                        ; sub_1402FDFF0+22↑p ...
                xor     r9d, r9d
                test    rdx, rdx
                jz      short loc_140300B3E
                xorps   xmm0, xmm0
                movups  xmmword ptr [rdx], xmm0

loc_140300B3E:                          ; CODE XREF: KeQueryNodeActiveAffinity+6↑j
                test    r8, r8
                jnz     short loc_140300B7E

loc_140300B43:                          ; CODE XREF: KeQueryNodeActiveAffinity+52↓j
                cmp     cx, cs:word_140CFB000
                jnb     short locret_140300B7C
                lfence
                movzx   eax, cx
                lea     rcx, qword_140D23380
                mov     rcx, [rcx+rax*8]
                test    rdx, rdx
                jz      short loc_140300B77
                movzx   eax, word ptr [rcx+90h]
                mov     [rdx+8], ax
                mov     rax, [rcx+88h]
                mov     [rdx], rax

loc_140300B77:                          ; CODE XREF: KeQueryNodeActiveAffinity+30↑j
                test    r8, r8
                jnz     short loc_140300B84

locret_140300B7C:                       ; CODE XREF: KeQueryNodeActiveAffinity+1A↑j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140300B7E:                          ; CODE XREF: KeQueryNodeActiveAffinity+11↑j
                mov     [r8], r9w
                jmp     short loc_140300B43
; ---------------------------------------------------------------------------

loc_140300B84:                          ; CODE XREF: KeQueryNodeActiveAffinity+4A↑j
                mov     rdx, [rcx+88h]
                mov     rcx, 5555555555555555h
                mov     rax, rdx
                shr     rax, 1
                and     rax, rcx
                sub     rdx, rax
                mov     rax, 3333333333333333h
                mov     rcx, rdx
                and     rdx, rax
                shr     rcx, 2
                and     rcx, rax
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                mov     [r8], ax
                retn
KeQueryNodeActiveAffinity endp
