KeDeregisterProcessorChangeCallback proc near
                                        ; DATA XREF: .pdata:000000014011DEDC↑o
                sub     rsp, 28h
                call    ExUnregisterCallback
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeDeregisterProcessorChangeCallback endp
