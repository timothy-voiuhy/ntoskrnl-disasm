KeGenericCallDpc proc near              ; CODE XREF: sub_1402E5B14+58D↑p
                                        ; sub_14038D764+37↓p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], rcx
                lea     r8, [rsp+38h+var_18]
                mov     [rsp+38h+var_10], rdx
                xor     ecx, ecx
                lea     rdx, sub_14034EC30
                mov     r9d, 1
                call    sub_1402BA410
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeGenericCallDpc endp
