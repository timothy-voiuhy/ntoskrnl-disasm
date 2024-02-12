SeSrpAccessCheck proc near              ; DATA XREF: .pdata:00000001400F86D0↑o

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

                sub     rsp, 48h
                mov     al, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], 1
                mov     [rsp+48h+var_20], al
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    sub_14037315C
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeSrpAccessCheck endp
