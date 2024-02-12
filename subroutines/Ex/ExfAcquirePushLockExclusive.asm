ExfAcquirePushLockExclusive proc near   ; CODE XREF: sub_140772368+D7897↓p
                                        ; sub_14095870C+75↓p ...
                sub     rsp, 28h
                mov     r8, rcx
                xor     edx, edx
                call    sub_1402F5F10
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExfAcquirePushLockExclusive endp
