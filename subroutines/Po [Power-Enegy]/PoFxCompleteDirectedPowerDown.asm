PoFxCompleteDirectedPowerDown proc near ; DATA XREF: .pdata:00000001400F64F8↑o
                sub     rsp, 28h
                mov     dl, 1
                call    sub_14056A9F4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxCompleteDirectedPowerDown endp
