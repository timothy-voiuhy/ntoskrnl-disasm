RtlRealSuccessor proc near              ; CODE XREF: sub_140326284+AA↑p
                                        ; sub_140326284+1D1↑p ...
                mov     rax, [rcx+10h]
                xor     edx, edx
                mov     r8, rcx
                test    rax, rax
                jnz     short loc_1403265B4

loc_14032659E:                          ; CODE XREF: RtlRealSuccessor+3B↓j
                mov     rcx, [rcx]
                cmp     [rcx+10h], r8
                jz      short loc_1403265C8
                cmp     [rcx+8], r8
                cmovz   rdx, rcx
                mov     rax, rdx

locret_1403265B2:                       ; CODE XREF: RtlRealSuccessor+34↓j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403265B4:                          ; CODE XREF: RtlRealSuccessor+C↑j
                mov     rcx, [rax+8]
                jmp     short loc_1403265C1
; ---------------------------------------------------------------------------

loc_1403265BA:                          ; CODE XREF: RtlRealSuccessor+36↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1403265C1:                          ; CODE XREF: RtlRealSuccessor+28↑j
                test    rcx, rcx
                jz      short locret_1403265B2
                jmp     short loc_1403265BA
; ---------------------------------------------------------------------------

loc_1403265C8:                          ; CODE XREF: RtlRealSuccessor+15↑j
                mov     r8, rcx
                jmp     short loc_14032659E
RtlRealSuccessor endp
