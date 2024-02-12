KeConvertPerformanceCounterToAuxiliaryCounter proc near
                                        ; DATA XREF: .pdata:00000001400F34B0↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00920
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeConvertPerformanceCounterToAuxiliaryCounter endp
