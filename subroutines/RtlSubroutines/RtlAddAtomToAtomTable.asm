RtlAddAtomToAtomTable proc near         ; DATA XREF: .pdata:0000000140106F20↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    RtlAddAtomToAtomTableEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAtomToAtomTable endp
