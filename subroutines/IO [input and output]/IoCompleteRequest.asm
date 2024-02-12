IoCompleteRequest proc near             ; DATA XREF: .pdata:00000001400F2724↑o
                sub     rsp, 28h
                call    IofCompleteRequest
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCompleteRequest endp
