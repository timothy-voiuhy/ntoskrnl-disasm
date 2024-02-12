IoCreateArcName proc near               ; DATA XREF: .pdata:000000014010B798↑o
                sub     rsp, 28h
                or      edx, 0FFFFFFFFh
                call    sub_14077E8F8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateArcName endp
