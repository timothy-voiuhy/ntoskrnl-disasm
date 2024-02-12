RtlSetDynamicTimeZoneInformation proc near
                                        ; DATA XREF: .pdata:00000001401220C4↑o
                sub     rsp, 28h
                mov     edx, 1B0h
                call    sub_1409168EC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetDynamicTimeZoneInformation endp
