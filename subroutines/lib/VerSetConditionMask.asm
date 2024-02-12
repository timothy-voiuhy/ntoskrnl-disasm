VerSetConditionMask proc near           ; CODE XREF: sub_140794E38+357↓p
                                        ; sub_1407B2AD8+281↓p ...
                and     r8b, 7
                mov     r9, rcx
                test    edx, edx
                jz      short loc_14037F531
                xor     eax, eax

loc_14037F50D:                          ; CODE XREF: VerSetConditionMask+11↓j
                inc     eax
                shr     edx, 1
                jnz     short loc_14037F50D
                dec     eax
                lea     ecx, [rax+rax*2]
                movzx   eax, r8b
                shl     rax, cl
                mov     rcx, 8000000000000000h
                or      rax, r9
                or      rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037F531:                          ; CODE XREF: VerSetConditionMask+9↑j
                xor     eax, eax
                retn
VerSetConditionMask endp
