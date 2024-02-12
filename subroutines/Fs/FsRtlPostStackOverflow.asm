FsRtlPostStackOverflow proc near        ; DATA XREF: .pdata:00000001400F1500↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    sub_1404F17C4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlPostStackOverflow endp
