KeStallWhileFrozen proc near            ; DATA XREF: .pdata:00000001400F3CB4↑o
                sub     rsp, 28h
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_14051DF10
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeStallWhileFrozen endp
