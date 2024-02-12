FsRtlOplockKeysEqual proc near          ; DATA XREF: .pdata:00000001400DC920↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    sub_14024E840
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockKeysEqual endp
