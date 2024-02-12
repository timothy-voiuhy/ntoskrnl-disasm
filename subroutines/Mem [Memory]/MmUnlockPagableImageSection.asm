MmUnlockPagableImageSection proc near   ; CODE XREF: sub_1408B0034+B↓p
                                        ; sub_1408BBF18+4FF↓p ...
                sub     rsp, 28h
                xor     edx, edx
                call    sub_140261960
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnlockPagableImageSection endp
