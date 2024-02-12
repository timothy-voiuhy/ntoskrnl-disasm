SeDeleteObjectAuditAlarm proc near      ; DATA XREF: .pdata:00000001401229DC↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    SeDeleteObjectAuditAlarmWithTransaction
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeDeleteObjectAuditAlarm endp
