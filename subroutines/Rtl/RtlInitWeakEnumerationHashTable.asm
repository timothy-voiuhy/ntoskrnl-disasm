RtlInitWeakEnumerationHashTable proc near
                                        ; DATA XREF: .pdata:00000001400F7D28↑o
                sub     rsp, 28h
                call    RtlInitEnumerationHashTable
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitWeakEnumerationHashTable endp
