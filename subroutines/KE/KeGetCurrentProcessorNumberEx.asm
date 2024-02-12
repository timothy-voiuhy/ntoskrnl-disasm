KeGetCurrentProcessorNumberEx proc near ; CODE XREF: sub_1402BD6A4+61↑p
                                        ; sub_140353018+36↓p ...
                mov     rax, gs:20h
                test    rcx, rcx
                jnz     short loc_1402BD773

loc_1402BD76E:                          ; CODE XREF: KeGetCurrentProcessorNumberEx+2B↓j
                mov     eax, [rax+24h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BD773:                          ; CODE XREF: KeGetCurrentProcessorNumberEx+C↑j
                movzx   edx, byte ptr [rax+0D0h]
                mov     [rcx], dx
                movzx   edx, byte ptr [rax+0D1h]
                mov     [rcx+2], dl
                mov     byte ptr [rcx+3], 0
                jmp     short loc_1402BD76E
KeGetCurrentProcessorNumberEx endp
