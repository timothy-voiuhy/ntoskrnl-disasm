FsRtlInitializeBaseMcb proc near        ; DATA XREF: .pdata:00000001400D452C↑o
                sub     rsp, 28h
                mov     r8d, 1
                call    FsRtlInitializeBaseMcbEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeBaseMcb endp
