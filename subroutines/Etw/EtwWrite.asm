EtwWrite        proc near               ; CODE XREF: sub_1402B3030+3EF↓p
                                        ; sub_1403C53AC+EB229↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_10], rax
                mov     [rsp+48h+var_18], r9d
                xor     r9d, r9d
                mov     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], r8
                xor     r8d, r8d
                call    EtwWriteEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EtwWrite        endp

algn_14024ED12:                         ; DATA XREF: .pdata:00000001400CCB94↑o
                align 20h
; Exported entry 151. EtwWriteTransfer

; =============== S U B R O U T I N E =======================================


