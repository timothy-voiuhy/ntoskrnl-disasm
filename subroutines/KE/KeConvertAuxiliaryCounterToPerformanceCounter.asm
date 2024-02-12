KeConvertAuxiliaryCounterToPerformanceCounter proc near
                                        ; DATA XREF: .pdata:00000001400F34A4↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00928
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeConvertAuxiliaryCounterToPerformanceCounter endp
