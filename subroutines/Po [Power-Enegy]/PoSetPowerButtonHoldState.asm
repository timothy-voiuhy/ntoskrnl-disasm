PoSetPowerButtonHoldState proc near     ; DATA XREF: .pdata:00000001400F6480↑o
                sub     rsp, 28h
                call    sub_140578E14
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetPowerButtonHoldState endp
