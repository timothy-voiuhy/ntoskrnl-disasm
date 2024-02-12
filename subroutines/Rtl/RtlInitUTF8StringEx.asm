RtlInitUTF8StringEx proc near           ; DATA XREF: .pdata:00000001400F7A58↑o
                sub     rsp, 28h        ; RtlInitStringEx
                call    RtlInitAnsiStringEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitUTF8StringEx endp
