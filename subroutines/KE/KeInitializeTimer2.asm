KeInitializeTimer2 proc near            ; CODE XREF: sub_14067E0B0+2BC↓p
                                        ; sub_14067E480+FF↓p ...
                sub     rsp, 28h
                and     word ptr [rcx+2], 0
                call    sub_1402B780C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeTimer2 endp
