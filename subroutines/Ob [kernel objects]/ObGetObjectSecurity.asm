ObGetObjectSecurity proc near           ; CODE XREF: sub_1403F81A0+92↑p
                                        ; DATA XREF: .pdata:000000014010710C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    sub_140624BE0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObGetObjectSecurity endp
