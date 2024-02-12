KeExpandKernelStackAndCalloutEx proc near
                                        ; CODE XREF: sub_1406F6148+3F↓p
                                        ; sub_14089C0A8+C8↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                neg     r9b
                mov     [rsp+38h+var_18], rax
                sbb     r9d, r9d
                and     r9d, 2
                call    ntoskrnl_7
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeExpandKernelStackAndCalloutEx endp
