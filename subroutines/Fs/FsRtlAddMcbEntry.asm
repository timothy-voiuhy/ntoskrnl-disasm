FsRtlAddMcbEntry proc near              ; DATA XREF: .pdata:00000001400F1230↑o
                sub     rsp, 28h
                mov     r9d, r9d
                mov     r8d, r8d
                mov     edx, edx
                call    FsRtlAddLargeMcbEntry
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAddMcbEntry endp
