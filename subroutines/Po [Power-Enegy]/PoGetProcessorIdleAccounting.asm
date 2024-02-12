PoGetProcessorIdleAccounting proc near  ; CODE XREF: sub_1404D3AC0+195↑p
                                        ; sub_1404D3AC0+1E8↑p ...
                mov     rax, gs:20h
                mov     rdx, [rax+8008h]
                test    rcx, rcx
                jz      short locret_140565705
                test    rdx, rdx
                jnz     short loc_1405656FF
                and     [rcx], rdx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405656FF:                          ; CODE XREF: PoGetProcessorIdleAccounting+18↑j
                mov     eax, [rdx+4]
                mov     [rcx], rax

locret_140565705:                       ; CODE XREF: PoGetProcessorIdleAccounting+13↑j
                retn
PoGetProcessorIdleAccounting endp
