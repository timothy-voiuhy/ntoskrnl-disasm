SeAuditingFileEventsWithContext proc near
                                        ; DATA XREF: .pdata:000000014012291C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    SeAuditingFileEventsWithContextEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditingFileEventsWithContext endp
