FsRtlMdlReadCompleteDev proc near       ; DATA XREF: .pdata:00000001400D8684↑o
                sub     rsp, 28h
                call    sub_14070D934
                mov     al, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlMdlReadCompleteDev endp
