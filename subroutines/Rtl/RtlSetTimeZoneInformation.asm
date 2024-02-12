RtlSetTimeZoneInformation proc near     ; DATA XREF: .pdata:00000001401220D0↑o
                sub     rsp, 28h
                mov     edx, 0ACh
                call    sub_1409168EC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetTimeZoneInformation endp
