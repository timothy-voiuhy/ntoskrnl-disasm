FsRtlUninitializeMcb proc near          ; DATA XREF: .pdata:000000014011C268↑o
                sub     rsp, 28h
                call    FsRtlUninitializeLargeMcb
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlUninitializeMcb endp
