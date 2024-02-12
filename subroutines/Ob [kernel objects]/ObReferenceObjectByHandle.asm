ObReferenceObjectByHandle proc near     ; CODE XREF: sub_1402164D0+4A↑p
                                        ; sub_140216560+232↑p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_10], 0
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], 746C6644h
                call    sub_140645090
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObReferenceObjectByHandle endp
