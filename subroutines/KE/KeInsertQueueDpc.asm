KeInsertQueueDpc proc near              ; CODE XREF: sub_140214FF4+19E↑p
                                        ; sub_140235D50+27F↑p ...

var_18          = byte ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                call    sub_140251CB0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInsertQueueDpc endp
