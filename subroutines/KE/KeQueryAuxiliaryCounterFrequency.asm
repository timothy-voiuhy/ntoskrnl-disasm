KeQueryAuxiliaryCounterFrequency proc near
                                        ; DATA XREF: .pdata:00000001400F34F8↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00930
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQueryAuxiliaryCounterFrequency endp
