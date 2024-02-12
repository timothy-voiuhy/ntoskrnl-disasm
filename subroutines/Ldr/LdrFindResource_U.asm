LdrFindResource_U proc near             ; CODE XREF: sub_140A3C054+455↓p
                                        ; sub_140A6D924+4A↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    sub_1406F1074
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LdrFindResource_U endp
