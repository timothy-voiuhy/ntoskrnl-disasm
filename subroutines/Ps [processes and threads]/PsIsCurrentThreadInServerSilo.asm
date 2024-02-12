PsIsCurrentThreadInServerSilo proc near ; CODE XREF: RtlGetActiveConsoleId+4↓p
                                        ; RtlGetNtProductType+D↓p ...
                sub     rsp, 28h
                call    sub_1403F2884
                test    eax, eax
                jz      short loc_14024BCCB
                xor     eax, eax
                test    rax, rax
                setnz   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14024BCCB:                          ; CODE XREF: PsIsCurrentThreadInServerSilo+B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+608h]
                cmp     rcx, 0FFFFFFFFFFFFFFFDh
                jz      short loc_14024BCF2
                call    PsGetEffectiveServerSilo
                test    rax, rax
                setnz   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14024BCF2:                          ; CODE XREF: PsIsCurrentThreadInServerSilo+2F↑j
                mov     rax, [rax+220h]
                mov     rax, [rax+870h]
                test    rax, rax
                setnz   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsIsCurrentThreadInServerSilo endp
