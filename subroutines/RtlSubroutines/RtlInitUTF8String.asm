RtlInitUTF8String proc near             ; CODE XREF: sub_140769624+DCFAD↓p
                                        ; DATA XREF: .pdata:00000001400F7A64↑o
                sub     rsp, 28h
                call    RtlInitString
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitUTF8String endp
