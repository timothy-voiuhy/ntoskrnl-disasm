PsGetEffectiveServerSilo proc near      ; CODE XREF: PsGetJobServerSilo+12↑p
                                        ; PsIsCurrentThreadInServerSilo+31↑p ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1402B9621
                xor     eax, eax

loc_1402B961B:                          ; CODE XREF: PsGetEffectiveServerSilo+26↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B9621:                          ; CODE XREF: PsGetEffectiveServerSilo+7↑j
                                        ; PsGetEffectiveServerSilo+21↓j
                call    sub_1402B96B0
                test    al, al
                jnz     short loc_1402B9633
                mov     rcx, [rcx+430h]
                jmp     short loc_1402B9621
; ---------------------------------------------------------------------------

loc_1402B9633:                          ; CODE XREF: PsGetEffectiveServerSilo+18↑j
                mov     rax, rcx
                jmp     short loc_1402B961B
PsGetEffectiveServerSilo endp
