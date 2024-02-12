KdPowerTransition proc near             ; CODE XREF: sub_1409950D0+1D2↓p
                                        ; sub_1409950D0+213↓p ...
                sub     rsp, 28h
                mov     dl, 1
                call    KdPowerTransitionEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdPowerTransition endp
