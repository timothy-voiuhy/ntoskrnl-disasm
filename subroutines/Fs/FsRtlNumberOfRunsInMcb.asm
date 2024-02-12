FsRtlNumberOfRunsInMcb proc near        ; DATA XREF: .pdata:00000001400F12C0↑o
                sub     rsp, 28h
                call    FsRtlNumberOfRunsInLargeMcb
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNumberOfRunsInMcb endp
