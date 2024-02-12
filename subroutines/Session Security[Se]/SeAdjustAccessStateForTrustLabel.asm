SeAdjustAccessStateForTrustLabel proc near
                                        ; DATA XREF: .pdata:00000001401227C0↑o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    sub_14076DB60
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAdjustAccessStateForTrustLabel endp
