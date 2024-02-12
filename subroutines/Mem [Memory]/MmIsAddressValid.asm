MmIsAddressValid proc near              ; CODE XREF: sub_1403DC418+B3↑p
                                        ; sub_1403DC418+1E8↑p ...
                sub     rsp, 28h
                call    sub_14029B5F0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsAddressValid endp
