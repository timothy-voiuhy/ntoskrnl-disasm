RtlQueryTimeZoneInformation proc near   ; DATA XREF: .pdata:00000001401220B8↑o
                sub     rsp, 28h
                mov     edx, 0ACh
                call    sub_1406DC150
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryTimeZoneInformation endp
