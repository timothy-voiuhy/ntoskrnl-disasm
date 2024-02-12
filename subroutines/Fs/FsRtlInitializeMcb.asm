FsRtlInitializeMcb proc near            ; DATA XREF: .pdata:000000014011C25C↑o
                sub     rsp, 28h
                call    FsRtlInitializeLargeMcb
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeMcb endp
