RtlEndWeakEnumerationHashTable proc near
                                        ; DATA XREF: .pdata:00000001400F7D1C↑o
                sub     rsp, 28h
                call    RtlEndEnumerationHashTable
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlEndWeakEnumerationHashTable endp
