NtSetCachedSigningLevel proc near       ; DATA XREF: .pdata:0000000140107DC0↑o
                                        ; PAGE:000000014098BF38↓o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rax
                call    sub_140729A40
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtSetCachedSigningLevel endp
