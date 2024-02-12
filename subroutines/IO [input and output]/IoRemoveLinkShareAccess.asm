IoRemoveLinkShareAccess proc near       ; DATA XREF: .pdata:000000014011C9F4↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    IoRemoveLinkShareAccessEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRemoveLinkShareAccess endp
