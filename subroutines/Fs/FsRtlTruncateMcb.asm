FsRtlTruncateMcb proc near              ; DATA XREF: .pdata:00000001400F1320↑o
                sub     rsp, 28h
                mov     edx, edx
                call    FsRtlTruncateLargeMcb
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlTruncateMcb endp
