ExfReleasePushLock proc near            ; CODE XREF: ExReleasePushLockEx+233↑p
                                        ; sub_140772368+D7A48↓p ...
                sub     rsp, 28h
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    al, 2
                jnz     short loc_1402F3F84
                cmp     rax, 10h
                jb      short loc_1402F3F8F

loc_1402F3F84:                          ; CODE XREF: ExfReleasePushLock+C↑j
                call    ExfReleasePushLockShared
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F3F8F:                          ; CODE XREF: ExfReleasePushLock+12↑j
                call    ExfReleasePushLockExclusive
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExfReleasePushLock endp
