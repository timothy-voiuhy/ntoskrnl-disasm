ExfUnblockPushLock proc near            ; CODE XREF: sub_140645090+5C7↓p
                                        ; sub_140649AF0+102↓p ...
                sub     rsp, 28h
                xor     r8d, r8d
                call    sub_140323C18
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExfUnblockPushLock endp
