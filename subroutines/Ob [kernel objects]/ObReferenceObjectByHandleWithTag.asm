ObReferenceObjectByHandleWithTag proc near
                                        ; CODE XREF: sub_1403A5228+90↑p
                                        ; sub_14027ED80+1C44E5↑p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_10], 0
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    sub_140645090
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObReferenceObjectByHandleWithTag endp
