SeAuditingAnyFileEventsWithContext proc near
                                        ; DATA XREF: .pdata:0000000140122904↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    SeAuditingAnyFileEventsWithContextEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditingAnyFileEventsWithContext endp
