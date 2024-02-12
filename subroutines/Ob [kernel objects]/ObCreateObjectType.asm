ObCreateObjectType proc near            ; CODE XREF: sub_140A3E134+10C↓p
                                        ; sub_140A3E134+131↓p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    ObCreateObjectTypeEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObCreateObjectType endp
