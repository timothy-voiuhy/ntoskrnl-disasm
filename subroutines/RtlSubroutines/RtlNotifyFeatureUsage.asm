RtlNotifyFeatureUsage proc near         ; CODE XREF: sub_140206E70+BA↑p
                                        ; sub_140309DE4+B1↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rdx, rcx
                call    sub_1404EDBE4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNotifyFeatureUsage endp
