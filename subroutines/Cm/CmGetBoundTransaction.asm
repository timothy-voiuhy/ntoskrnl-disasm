CmGetBoundTransaction proc near         ; DATA XREF: .pdata:0000000140106D4C↑o
                test    rcx, rcx
                jz      short loc_14071C453
                mov     rax, [rdx+38h]
                test    al, 1
                jnz     short loc_14071C453
                and     rax, 0FFFFFFFFFFFFFFFEh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071C453:                          ; CODE XREF: CmGetBoundTransaction+3↑j
                                        ; CmGetBoundTransaction+B↑j
                xor     eax, eax
                retn
CmGetBoundTransaction endp
