WheaHwErrorReportAbandonDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+9E↓p
                                        ; WheaReportHwErrorDeviceDriverEx+9D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC074
                mov     eax, 0C0000008h
                jmp     short loc_1405BC07B
; ---------------------------------------------------------------------------

loc_1405BC074:                          ; CODE XREF: WheaHwErrorReportAbandonDeviceDriver+B↑j
                call    sub_1405BC5EC
                xor     eax, eax

loc_1405BC07B:                          ; CODE XREF: WheaHwErrorReportAbandonDeviceDriver+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportAbandonDeviceDriver endp
