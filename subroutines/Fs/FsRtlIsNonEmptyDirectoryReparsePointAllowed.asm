FsRtlIsNonEmptyDirectoryReparsePointAllowed proc near
                                        ; DATA XREF: .pdata:00000001400D8D74↑o
                sub     rsp, 28h
                call    RtlIsNonEmptyDirectoryReparsePointAllowed
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlIsNonEmptyDirectoryReparsePointAllowed endp
