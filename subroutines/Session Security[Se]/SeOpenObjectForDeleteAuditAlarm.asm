SeOpenObjectForDeleteAuditAlarm proc near
                                        ; DATA XREF: .pdata:0000000140122A00↑o

var_30          = byte ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h

                mov     r11, rsp
                sub     rsp, 58h
                mov     r10b, [rsp+58h+arg_38]
                test    r10b, r10b
                jz      short loc_140922EC0
                mov     rax, [rsp+58h+arg_40]
                mov     [r11-10h], rax
                and     qword ptr [r11-18h], 0
                mov     al, [rsp+58h+arg_30]
                mov     [r11-20h], r10b
                mov     [rsp+58h+var_28], al
                mov     al, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], al
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    SeOpenObjectForDeleteAuditAlarmWithTransaction

loc_140922EC0:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarm+12↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeOpenObjectForDeleteAuditAlarm endp
