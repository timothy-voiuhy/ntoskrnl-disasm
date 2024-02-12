HalStopProfileInterrupt proc near       ; DATA XREF: .pdata:00000001400EEBC0↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00A40
                xor     edx, edx
                mov     rax, [rax+10h]
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalStopProfileInterrupt endp
