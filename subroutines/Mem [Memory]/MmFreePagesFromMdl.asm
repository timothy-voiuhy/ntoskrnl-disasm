MmFreePagesFromMdl proc near            ; CODE XREF: sub_1403E9F40+35↓p
                                        ; sub_140553904+95↓p ...
                sub     rsp, 28h
                xor     edx, edx
                call    sub_1402DABA8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmFreePagesFromMdl endp
