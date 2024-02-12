IoUnregisterPlugPlayNotification proc near
                                        ; CODE XREF: sub_140A97DC4+A0↓p
                                        ; DATA XREF: .pdata:000000014010A8C8↑o
                sub     rsp, 28h
                xor     edx, edx
                call    sub_14037F8D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUnregisterPlugPlayNotification endp
