SeMarkLogonSessionForTerminationNotification proc near
                                        ; DATA XREF: .pdata:00000001401074F0↑o
                sub     rsp, 28h
                xor     edx, edx
                call    SeMarkLogonSessionForTerminationNotificationEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeMarkLogonSessionForTerminationNotification endp
