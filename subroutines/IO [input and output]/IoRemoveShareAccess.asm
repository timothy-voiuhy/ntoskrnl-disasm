IoRemoveShareAccess proc near           ; DATA XREF: .pdata:0000000140101B5C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                call    IoRemoveLinkShareAccessEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRemoveShareAccess endp
