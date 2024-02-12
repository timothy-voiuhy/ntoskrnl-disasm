IoGetLowerDeviceObject proc near        ; DATA XREF: .pdata:00000001400D9164↑o
                sub     rsp, 28h
                mov     edx, 746C6644h
                call    sub_14035ECFC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetLowerDeviceObject endp
