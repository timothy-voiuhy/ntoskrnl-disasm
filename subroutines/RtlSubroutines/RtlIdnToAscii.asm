RtlIdnToAscii   proc near               ; DATA XREF: .pdata:00000001401221E4↑o

var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], 1
                mov     [rsp+38h+var_18], rax
                call    sub_140917E70
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIdnToAscii   endp

byte_140917D9E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001401221E4↑o
; Exported entry 2193. RtlIdnToNameprepUnicode

; =============== S U B R O U T I N E =======================================


