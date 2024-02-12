KeExpandKernelStackAndCallout proc near ; CODE XREF: sub_1409C7988+76↓p
                                        ; sub_140A1DBA0+217↓p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                mov     r9d, 2
                call    ntoskrnl_7
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeExpandKernelStackAndCallout endp
