ExAllocatePoolWithQuota proc near       ; CODE XREF: sub_1409D6D10+49↓p
                                        ; DATA XREF: .pdata:00000001400F9E28↑o
                sub     rsp, 28h
                mov     r8d, 656E6F4Eh
                call    ExAllocatePoolWithQuotaTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocatePoolWithQuota endp
