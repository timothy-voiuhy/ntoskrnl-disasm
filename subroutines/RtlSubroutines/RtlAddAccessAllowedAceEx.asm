RtlAddAccessAllowedAceEx proc near      ; CODE XREF: sub_140A539D0+84↓p
                                        ; sub_140A53D90+1B0↓p ...

var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rax
                call    sub_140622B20
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAccessAllowedAceEx endp
