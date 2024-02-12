KdDisableDebugger proc near             ; CODE XREF: sub_1407CE500+941B8↓p
                                        ; sub_140A1DBA0+1C↓p ...
                sub     rsp, 28h
                call    sub_1403CF678
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdDisableDebugger endp
