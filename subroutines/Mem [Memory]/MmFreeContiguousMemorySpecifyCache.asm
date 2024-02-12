MmFreeContiguousMemorySpecifyCache proc near
                                        ; CODE XREF: sub_14079F9D0+B56B0↓p
                                        ; sub_14079F9D0+B56C5↓p ...
                sub     rsp, 28h
                call    MmFreeContiguousMemory
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmFreeContiguousMemorySpecifyCache endp
