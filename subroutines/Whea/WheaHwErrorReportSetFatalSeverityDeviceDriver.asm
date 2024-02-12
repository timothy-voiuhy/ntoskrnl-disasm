WheaHwErrorReportSetFatalSeverityDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+53↓p
                                        ; DATA XREF: .pdata:00000001400FA3C8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC130
                mov     eax, 0C0000008h
                jmp     short loc_1405BC152
; ---------------------------------------------------------------------------

loc_1405BC130:                          ; CODE XREF: WheaHwErrorReportSetFatalSeverityDeviceDriver+17↑j
                mov     edx, 1
                call    WheaHwErrorReportSetSeverityDeviceDriver
                mov     rax, [rbx+28h]
                bts     dword ptr [rax+14h], 1Eh
                mov     rax, [rbx+28h]
                btr     dword ptr [rax+14h], 1Fh
                xor     eax, eax
                mov     [rbx+38h], rdi

loc_1405BC152:                          ; CODE XREF: WheaHwErrorReportSetFatalSeverityDeviceDriver+1E↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportSetFatalSeverityDeviceDriver endp
