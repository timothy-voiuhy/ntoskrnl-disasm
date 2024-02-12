ExNotifyCallback proc near              ; CODE XREF: sub_140615070+8B7↓p
                                        ; sub_14067A140+C1E↓p ...
                sub     rsp, 28h
                xor     r9d, r9d
                call    sub_140342E58
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExNotifyCallback endp
