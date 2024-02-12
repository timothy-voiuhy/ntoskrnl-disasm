KeRestoreExtendedProcessorState proc near
                                        ; CODE XREF: sub_1403EBD2C+4↓p
                                        ; DATA XREF: .pdata:00000001400D8744↑o
                sub     rsp, 28h
                call    sub_1403562B8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRestoreExtendedProcessorState endp
