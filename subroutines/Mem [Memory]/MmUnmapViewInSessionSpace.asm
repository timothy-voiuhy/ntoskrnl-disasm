MmUnmapViewInSessionSpace proc near     ; DATA XREF: .pdata:000000014010704C↑o
                sub     rsp, 28h
                call    MmUnmapViewInSystemSpace
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnmapViewInSessionSpace endp
