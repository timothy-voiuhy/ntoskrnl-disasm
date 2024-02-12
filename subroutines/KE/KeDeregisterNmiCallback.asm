KeDeregisterNmiCallback proc near       ; DATA XREF: .pdata:00000001400F34C8↑o
                sub     rsp, 28h
                call    sub_140514AC4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeDeregisterNmiCallback endp
