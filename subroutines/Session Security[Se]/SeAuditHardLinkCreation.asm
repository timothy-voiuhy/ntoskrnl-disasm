SeAuditHardLinkCreation proc near       ; DATA XREF: .pdata:0000000140122838↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    SeAuditHardLinkCreationWithTransaction
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditHardLinkCreation endp
