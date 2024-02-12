PsGetParentSilo proc near               ; CODE XREF: sub_140653C50+1AF8↑p
                                        ; sub_1406E0130+42↑p ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1409071ED
                xor     eax, eax
                jmp     short loc_1409071F9
; ---------------------------------------------------------------------------

loc_1409071ED:                          ; CODE XREF: PsGetParentSilo+7↑j
                mov     rcx, [rcx+430h]
                call    sub_140200084

loc_1409071F9:                          ; CODE XREF: PsGetParentSilo+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetParentSilo endp
