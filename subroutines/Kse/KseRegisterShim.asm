KseRegisterShim proc near               ; CODE XREF: sub_140A3ABE4+10↓p
                                        ; sub_140A3AC5C+10↓p ...
                sub     rsp, 28h
                xor     r9d, r9d
                call    KseRegisterShimEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KseRegisterShim endp
