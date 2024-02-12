ObQueryNameString proc near             ; CODE XREF: IoDeleteDevice+D4↑p
                                        ; IoDeleteDevice+10E↑p ...

var_18          = byte ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], 0
                call    sub_1406C14C0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObQueryNameString endp
