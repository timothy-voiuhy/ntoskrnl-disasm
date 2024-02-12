PsGetThreadServerSilo proc near         ; CODE XREF: sub_1402095D8+3F↑p
                                        ; sub_140261EA0+38↑p ...
                sub     rsp, 28h
                mov     rax, [rcx+608h]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                jnz     short loc_140261FF5
                mov     rax, [rcx+220h]
                mov     rax, [rax+870h]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140261FF5:                          ; CODE XREF: PsGetThreadServerSilo+F↑j
                mov     rcx, rax
                call    PsGetEffectiveServerSilo
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetThreadServerSilo endp
