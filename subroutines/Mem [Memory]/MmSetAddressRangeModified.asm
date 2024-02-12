MmSetAddressRangeModified proc near     ; DATA XREF: .pdata:00000001400D8F18↑o
                sub     rsp, 28h
                call    sub_1402A6470
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmSetAddressRangeModified endp
