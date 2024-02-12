IoUpdateLinkShareAccess proc near       ; DATA XREF: .pdata:000000014011CA24↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    IoUpdateLinkShareAccessEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUpdateLinkShareAccess endp
