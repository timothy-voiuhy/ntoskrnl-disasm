RtlCreateHashTable proc near            ; CODE XREF: sub_1406D7B14+1A7↓p
                                        ; sub_14078D2E8+23↓p ...
                sub     rsp, 28h
                mov     r9d, r8d
                mov     r8d, edx
                mov     edx, 80h
                call    sub_140376B30
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCreateHashTable endp
