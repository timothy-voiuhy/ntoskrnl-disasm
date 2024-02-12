WheaHwErrorReportSetSeverityDeviceDriver proc near
                                        ; CODE XREF: WheaHwErrorReportSetFatalSeverityDeviceDriver+25↑p
                                        ; WheaReportHwErrorDeviceDriverEx+52↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC1D4
                mov     eax, 0C0000008h
                jmp     short loc_1405BC1F4
; ---------------------------------------------------------------------------

loc_1405BC1D4:                          ; CODE XREF: WheaHwErrorReportSetSeverityDeviceDriver+B↑j
                mov     rax, [rcx+28h]
                mov     [rcx+34h], edx
                mov     [rax+14h], edx
                mov     rax, [rcx+28h]
                btr     dword ptr [rax+14h], 1Eh
                mov     rax, [rcx+28h]
                or      dword ptr [rax+14h], 80000000h
                xor     eax, eax

loc_1405BC1F4:                          ; CODE XREF: WheaHwErrorReportSetSeverityDeviceDriver+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportSetSeverityDeviceDriver endp
