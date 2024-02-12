RtlFindAceByType proc near              ; CODE XREF: sub_140201574+12E↑p
                                        ; RtlIsUntrustedObject+B3↑p ...
                test    rcx, rcx
                jnz     short loc_14021BCE9

loc_14021BCE5:                          ; CODE XREF: RtlFindAceByType+18↓j
                                        ; RtlFindAceByType+47↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021BCE9:                          ; CODE XREF: RtlFindAceByType+3↑j
                movzx   r9d, word ptr [rcx+4]
                lea     r10, [rcx+8]
                xor     r11d, r11d
                test    r9d, r9d
                jz      short loc_14021BCE5

loc_14021BCFA:                          ; CODE XREF: RtlFindAceByType+49↓j
                test    r8, r8
                jnz     short loc_14021BD0C
                movzx   eax, byte ptr [r10]
                cmp     eax, edx
                jnz     short loc_14021BD19

loc_14021BD07:                          ; CODE XREF: RtlFindAceByType+4E↓j
                mov     rax, r10
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021BD0C:                          ; CODE XREF: RtlFindAceByType+1D↑j
                cmp     r11d, [r8]
                jb      short loc_14021BD19
                movzx   eax, byte ptr [r10]
                cmp     eax, edx
                jz      short loc_14021BD2B

loc_14021BD19:                          ; CODE XREF: RtlFindAceByType+25↑j
                                        ; RtlFindAceByType+2F↑j
                movzx   eax, word ptr [r10+2]
                inc     r11d
                add     r10, rax
                cmp     r11d, r9d
                jnb     short loc_14021BCE5
                jmp     short loc_14021BCFA
; ---------------------------------------------------------------------------

loc_14021BD2B:                          ; CODE XREF: RtlFindAceByType+37↑j
                mov     [r8], r11d
                jmp     short loc_14021BD07
RtlFindAceByType endp
