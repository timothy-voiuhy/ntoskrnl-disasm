WheaCreateHwErrorReportDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+31↓p
                                        ; WheaReportHwErrorDeviceDriverEx+31↓p
                                        ; DATA XREF: ...

arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                lea     rdx, [rsp+28h+arg_10]
                mov     [rsp+28h+arg_10], rbx
                call    sub_1405BC700
                test    eax, eax
                cmovns  rbx, [rsp+28h+arg_10]
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaCreateHwErrorReportDeviceDriver endp
