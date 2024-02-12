FsRtlRemoveMcbEntry proc near           ; DATA XREF: .pdata:00000001400F12E4↑o
                sub     rsp, 28h
                mov     r8d, r8d
                mov     edx, edx
                call    FsRtlRemoveLargeMcbEntry
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRemoveMcbEntry endp
