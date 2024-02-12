_snprintf_s     proc near               ; CODE XREF: RtlIncrementCorrelationVector+92↓p
                                        ; DATA XREF: .pdata:00000001400E0D78↑o

var_28          = qword ptr -28h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

                mov     [rsp+arg_18], r9
                sub     rsp, 48h
                lea     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    _vsnprintf_s
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snprintf_s     endp

algn_1403D6D4E:                         ; DATA XREF: .pdata:00000001400E0D78↑o
                align 20h
; Exported entry 2990. _vsnprintf_s

; =============== S U B R O U T I N E =======================================


