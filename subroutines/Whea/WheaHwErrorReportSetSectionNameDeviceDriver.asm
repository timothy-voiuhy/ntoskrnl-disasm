WheaHwErrorReportSetSectionNameDeviceDriver proc near
                                        ; DATA XREF: .pdata:00000001400FA3D4↑o
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1405BC180
                mov     eax, 0C00000EFh
                jmp     short loc_1405BC1A5
; ---------------------------------------------------------------------------

loc_1405BC180:                          ; CODE XREF: WheaHwErrorReportSetSectionNameDeviceDriver+7↑j
                cmp     edx, 14h
                jbe     short loc_1405BC18C
                mov     eax, 0C00000F0h
                jmp     short loc_1405BC1A5
; ---------------------------------------------------------------------------

loc_1405BC18C:                          ; CODE XREF: WheaHwErrorReportSetSectionNameDeviceDriver+13↑j
                test    r8, r8
                jnz     short loc_1405BC198
                mov     eax, 0C00000F1h
                jmp     short loc_1405BC1A5
; ---------------------------------------------------------------------------

loc_1405BC198:                          ; CODE XREF: WheaHwErrorReportSetSectionNameDeviceDriver+1F↑j
                mov     rcx, [rcx+18h]
                mov     edx, edx
                call    sub_14035B224
                xor     eax, eax

loc_1405BC1A5:                          ; CODE XREF: WheaHwErrorReportSetSectionNameDeviceDriver+E↑j
                                        ; WheaHwErrorReportSetSectionNameDeviceDriver+1A↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportSetSectionNameDeviceDriver endp
