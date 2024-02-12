HalFreeCommonBuffer proc near           ; DATA XREF: .rdata:0000000140005F78↑o
                                        ; .pdata:00000001400DB714↑o
                sub     rsp, 28h
                mov     rcx, r9
                call    MmFreeContiguousMemory
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalFreeCommonBuffer endp
