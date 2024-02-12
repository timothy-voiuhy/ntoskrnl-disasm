KeGetProcessorIndexFromNumber proc near ; CODE XREF: sub_140215D38+42↑p
                                        ; sub_140215D38+105↑p ...
                cmp     byte ptr [rcx+3], 0
                jnz     short loc_140215EB3
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jnz     short loc_140215E83
                cmp     [rcx+2], al
                jz      short loc_140215EAF

loc_140215E83:                          ; CODE XREF: KeGetProcessorIndexFromNumber+C↑j
                cmp     ax, cs:word_140CFB018
                jnb     short loc_140215EB3
                movzx   edx, byte ptr [rcx+2]
                cmp     dl, 40h ; '@'
                jnb     short loc_140215EB3
                mov     rcx, rax
                lea     rax, dword_140D024D0
                shl     rcx, 6
                add     rcx, rdx
                mov     eax, [rax+rcx*4]
                test    eax, eax
                jz      short loc_140215EB3
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140215EAF:                          ; CODE XREF: KeGetProcessorIndexFromNumber+11↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140215EB3:                          ; CODE XREF: KeGetProcessorIndexFromNumber+4↑j
                                        ; KeGetProcessorIndexFromNumber+1A↑j ...
                mov     eax, 0FFFFFFFFh
                retn
KeGetProcessorIndexFromNumber endp
