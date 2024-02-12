RtlInitUnicodeStringEx proc near        ; CODE XREF: RtlAppendUnicodeToString+31↑p
                                        ; sub_1405DE218+C4↓p ...
                xor     r8d, r8d
                mov     [rcx], r8
                mov     [rcx+8], rdx
                test    rdx, rdx
                jz      short loc_14021D503
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_14021D4E3:                          ; CODE XREF: RtlInitUnicodeStringEx+1B↓j
                inc     rax
                cmp     [rdx+rax*2], r8w
                jnz     short loc_14021D4E3
                cmp     rax, 7FFEh
                ja      short loc_14021D507
                add     ax, ax
                mov     [rcx], ax
                add     ax, 2
                mov     [rcx+2], ax

loc_14021D503:                          ; CODE XREF: RtlInitUnicodeStringEx+D↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021D507:                          ; CODE XREF: RtlInitUnicodeStringEx+23↑j
                mov     eax, 0C0000106h
                retn
RtlInitUnicodeStringEx endp
