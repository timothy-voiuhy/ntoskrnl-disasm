PsReferenceSiloContext proc near        ; DATA XREF: .pdata:00000001400D90B0↑o
                sub     rsp, 28h
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReferenceSiloContext endp
