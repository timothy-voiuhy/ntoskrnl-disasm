RtlAddAccessDeniedAceEx proc near       ; CODE XREF: sub_140A53D90+1DA↓p
                                        ; DATA XREF: .pdata:000000014010D0B8↑o

var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], 1
                mov     [rsp+38h+var_18], rax
                call    sub_140622B20
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAccessDeniedAceEx endp
