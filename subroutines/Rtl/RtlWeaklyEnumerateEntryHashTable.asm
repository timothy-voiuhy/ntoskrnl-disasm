RtlWeaklyEnumerateEntryHashTable proc near
                                        ; DATA XREF: .pdata:00000001400F7D34↑o
                sub     rsp, 28h
                call    RtlEnumerateEntryHashTable
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlWeaklyEnumerateEntryHashTable endp
