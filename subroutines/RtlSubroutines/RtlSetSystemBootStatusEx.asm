RtlSetSystemBootStatusEx proc near      ; CODE XREF: sub_1409930F4+6F2↓p
                                        ; DATA XREF: .pdata:00000001401075D4↑o
                sub     rsp, 28h
                mov     r9, r8
                mov     r8d, edx
                mov     rdx, rcx
                mov     ecx, 20h ; ' '
                call    sub_14079A0EC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetSystemBootStatusEx endp
