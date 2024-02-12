WheaReportHwErrorDeviceDriverEx proc near
                                        ; CODE XREF: WheaReportHwErrorDeviceDriver+39↓p
                                        ; DATA XREF: .pdata:00000001400FA404↑o

var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     esi, r9d
                xor     eax, eax
                mov     rbp, r8
                and     [r11-38h], rax
                movups  [rsp+58h+var_30], xmm0
                movups  [rsp+58h+var_20], xmm0
                mov     [r11-10h], rax
                call    WheaCreateHwErrorReportDeviceDriver
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1405BC478
                mov     ebx, 0C000009Ah
                jmp     loc_1405BC526
; ---------------------------------------------------------------------------

loc_1405BC478:                          ; CODE XREF: WheaReportHwErrorDeviceDriverEx+3C↑j
                mov     edx, [rsp+58h+arg_40]
                mov     rcx, rdi
                call    WheaHwErrorReportSetSeverityDeviceDriver
                mov     edx, [rsp+58h+arg_28]
                lea     r8, [rsp+58h+var_38]
                mov     rcx, rdi
                call    WheaHwErrorReportGetLogDataBufferDeviceDriver
                mov     r8d, [rsp+58h+arg_28]
                mov     rdx, [rsp+58h+arg_20]
                mov     rcx, [rsp+58h+var_38]
                call    memmove
                lea     r8, [rsp+58h+var_30]
                mov     edx, esi
                mov     rcx, rdi
                call    WheaAddHwErrorReportSectionDeviceDriver
                mov     ebx, eax
                test    eax, eax
                jns     short loc_1405BC4D4
                mov     rcx, rdi
                call    WheaHwErrorReportAbandonDeviceDriver
                jmp     short loc_1405BC526
; ---------------------------------------------------------------------------

loc_1405BC4D4:                          ; CODE XREF: WheaReportHwErrorDeviceDriverEx+98↑j
                mov     rcx, qword ptr [rsp+58h+var_30+4]
                mov     r8, rsi
                mov     rdx, rbp
                call    memmove
                mov     rax, [rsp+58h+arg_30]
                mov     r8, [rsp+58h+arg_48]
                movups  xmm0, xmmword ptr [rax]
                mov     rax, qword ptr [rsp+58h+var_20]
                movdqu  xmmword ptr [rax], xmm0
                mov     rax, [rsp+58h+var_10]
                mov     byte ptr [rax], 1
                test    r8, r8
                jz      short loc_1405BC51C
                mov     rcx, qword ptr [rsp+58h+var_20+8]
                mov     edx, 14h
                call    sub_14035B224

loc_1405BC51C:                          ; CODE XREF: WheaReportHwErrorDeviceDriverEx+DB↑j
                mov     rcx, rdi
                call    WheaHwErrorReportSubmitDeviceDriver
                mov     ebx, eax

loc_1405BC526:                          ; CODE XREF: WheaReportHwErrorDeviceDriverEx+43↑j
                                        ; WheaReportHwErrorDeviceDriverEx+A2↑j
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaReportHwErrorDeviceDriverEx endp
