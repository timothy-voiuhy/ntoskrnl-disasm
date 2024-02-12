IoUnregisterBootDriverCallback proc near
                                        ; DATA XREF: .pdata:000000014012EBF8↑o
                sub     rsp, 28h
                call    ExUnregisterCallback
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUnregisterBootDriverCallback endp
