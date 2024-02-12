PsDereferencePrimaryToken proc near     ; CODE XREF: sub_1406BBE7C+AE1↑p
                                        ; sub_1406BBE7C+B02↑p ...
                sub     rsp, 28h        ; IoDeleteController
                call    PsDereferenceSiloContext
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsDereferencePrimaryToken endp
