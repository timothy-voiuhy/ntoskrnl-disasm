ExfTryToWakePushLock proc near          ; CODE XREF: sub_140207420+1CB↑p
                                        ; sub_140208EE8+1CC↑p ...
                sub     rsp, 28h
                mov     rax, [rcx]
                test    al, 4
                jnz     short loc_1402F40C3
                test    al, 1
                jnz     short loc_1402F40C3
                test    al, 2
                jz      short loc_1402F40C3
                lea     rdx, [rax+4]
                lock cmpxchg [rcx], rdx
                jnz     short loc_1402F40C3
                call    sub_1402F40D0

loc_1402F40C3:                          ; CODE XREF: ExfTryToWakePushLock+9↑j
                                        ; ExfTryToWakePushLock+D↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExfTryToWakePushLock endp
