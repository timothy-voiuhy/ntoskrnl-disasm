SeCloseObjectAuditAlarmForNonObObject proc near
                                        ; DATA XREF: .pdata:00000001401229D0↑o

var_18          = byte ptr -18h

                sub     rsp, 38h
                test    r9b, r9b
                jz      short loc_140922A36
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 1
                call    sub_1409201C8

loc_140922A36:                          ; CODE XREF: SeCloseObjectAuditAlarmForNonObObject+7↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeCloseObjectAuditAlarmForNonObObject endp
