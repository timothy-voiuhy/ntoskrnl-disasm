FsRtlIsSystemPagingFile proc near       ; DATA XREF: .pdata:00000001400DA2F8↑o
                sub     rsp, 28h
                call    sub_1402A24C8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlIsSystemPagingFile endp
