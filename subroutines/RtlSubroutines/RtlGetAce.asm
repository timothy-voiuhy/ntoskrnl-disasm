RtlGetAce       proc near               ; CODE XREF: sub_140201C7C+FF↑p
                                        ; sub_1403F81A0+156↓p ...
                mov     al, [rcx]
                mov     r10, r8
                sub     al, 2
                cmp     al, 2
                ja      short loc_14021C202
                movzx   eax, word ptr [rcx+4]
                cmp     edx, eax
                jnb     short loc_14021C202
                lea     r9, [rcx+8]
                mov     [r8], r9
                xor     r8d, r8d
                test    edx, edx
                jnz     short loc_14021C1E1

loc_14021C1D1:                          ; CODE XREF: RtlGetAce+50↓j
                movzx   eax, word ptr [rcx+2]
                add     rax, rcx
                cmp     r9, rax
                jnb     short loc_14021C202
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C1E1:                          ; CODE XREF: RtlGetAce+1F↑j
                                        ; RtlGetAce+4E↓j
                movzx   eax, word ptr [rcx+2]
                add     rax, rcx
                cmp     r9, rax
                jnb     short loc_14021C202
                movzx   eax, word ptr [r9+2]
                inc     r8d
                add     r9, rax
                mov     [r10], r9
                cmp     r8d, edx
                jb      short loc_14021C1E1
                jmp     short loc_14021C1D1
; ---------------------------------------------------------------------------

loc_14021C202:                          ; CODE XREF: RtlGetAce+9↑j
                                        ; RtlGetAce+11↑j ...
                mov     eax, 0C000000Dh
                retn
RtlGetAce       endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14021C209:                         ; DATA XREF: .pdata:00000001400CA6EC↑o
                align 10h
; Exported entry 2281. RtlLengthSid

; =============== S U B R O U T I N E =======================================


