WheaHwErrorReportMarkAsCriticalDeviceDriver proc near
                                        ; DATA XREF: .pdata:00000001400FA3BC↑o
                sub     rsp, 28h
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC0F4
                mov     eax, 0C0000008h
                jmp     short loc_1405BC0FE
; ---------------------------------------------------------------------------

loc_1405BC0F4:                          ; CODE XREF: WheaHwErrorReportMarkAsCriticalDeviceDriver+B↑j
                mov     rax, [rcx+28h]
                or      dword ptr [rax+0Ch], 2
                xor     eax, eax

loc_1405BC0FE:                          ; CODE XREF: WheaHwErrorReportMarkAsCriticalDeviceDriver+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportMarkAsCriticalDeviceDriver endp
