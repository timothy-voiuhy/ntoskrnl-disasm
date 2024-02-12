WmiTraceMessage proc near               ; DATA XREF: .pdata:00000001400D92D8↑o

var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_18          = word ptr  20h
arg_20          = byte ptr  28h

                mov     [rsp+arg_18], r9w
                sub     rsp, 48h
                lea     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], rax
                call    sub_1402BC630
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WmiTraceMessage endp
