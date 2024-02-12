WheaHwErrorReportGetLogDataBufferDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+67↓p
                                        ; WheaReportHwErrorDeviceDriverEx+66↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC0A4
                mov     eax, 0C0000008h
                jmp     short loc_1405BC0C8
; ---------------------------------------------------------------------------

loc_1405BC0A4:                          ; CODE XREF: WheaHwErrorReportGetLogDataBufferDeviceDriver+B↑j
                cmp     edx, 24h ; '$'
                jbe     short loc_1405BC0B0
                mov     eax, 0C000009Ah
                jmp     short loc_1405BC0C8
; ---------------------------------------------------------------------------

loc_1405BC0B0:                          ; CODE XREF: WheaHwErrorReportGetLogDataBufferDeviceDriver+17↑j
                test    r8, r8
                jnz     short loc_1405BC0BC
                mov     eax, 0C00000F1h
                jmp     short loc_1405BC0C8
; ---------------------------------------------------------------------------

loc_1405BC0BC:                          ; CODE XREF: WheaHwErrorReportGetLogDataBufferDeviceDriver+23↑j
                lea     rax, [rcx+40h]
                mov     [rcx+64h], edx
                mov     [r8], rax
                xor     eax, eax

loc_1405BC0C8:                          ; CODE XREF: WheaHwErrorReportGetLogDataBufferDeviceDriver+12↑j
                                        ; WheaHwErrorReportGetLogDataBufferDeviceDriver+1E↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportGetLogDataBufferDeviceDriver endp
