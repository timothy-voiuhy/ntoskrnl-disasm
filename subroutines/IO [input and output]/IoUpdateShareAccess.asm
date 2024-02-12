IoUpdateShareAccess proc near           ; DATA XREF: .pdata:000000014010ABBC↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                call    IoUpdateLinkShareAccessEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUpdateShareAccess endp
