PsGetCurrentServerSilo proc near        ; CODE XREF: sub_1405CE39C+28↓p
                                        ; sub_1405E57F8+17↓p ...
                sub     rsp, 28h
                call    sub_1403F2884
                test    eax, eax
                jz      short loc_140310435
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310435:                          ; CODE XREF: PsGetCurrentServerSilo+B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+608h]
                cmp     rcx, 0FFFFFFFFFFFFFFFDh
                jz      short loc_14031047B
                test    rcx, rcx
                jnz     short loc_140310459
                mov     rax, rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310459:                          ; CODE XREF: PsGetCurrentServerSilo+2E↑j
                call    sub_1402B96B0
                test    al, al
                jnz     short loc_140310489

loc_140310462:                          ; CODE XREF: PsGetCurrentServerSilo+50↓j
                mov     rcx, [rcx+430h]
                call    sub_1402B96B0
                test    al, al
                jz      short loc_140310462
                mov     rax, rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031047B:                          ; CODE XREF: PsGetCurrentServerSilo+29↑j
                mov     rax, [rax+220h]
                mov     rcx, [rax+870h]

loc_140310489:                          ; CODE XREF: PsGetCurrentServerSilo+40↑j
                mov     rax, rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetCurrentServerSilo endp
