PsWow64GetProcessMachine proc near      ; CODE XREF: sub_1402AAED0+36↑p
                                        ; sub_1402ABCE0+7B8↑p ...
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_140665B77
                movzx   eax, word ptr [rax+8]
                test    ax, ax
                jz      short loc_140665B77
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140665B77:                          ; CODE XREF: PsWow64GetProcessMachine+A↑j
                                        ; PsWow64GetProcessMachine+13↑j
                mov     eax, 8664h
                retn
PsWow64GetProcessMachine endp
