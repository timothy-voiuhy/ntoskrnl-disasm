IoUnregisterPlugPlayNotificationEx proc near
                                        ; DATA XREF: .pdata:000000014010C26C↑o
                sub     rsp, 28h
                mov     dl, 1
                call    sub_14037F8D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUnregisterPlugPlayNotificationEx endp
