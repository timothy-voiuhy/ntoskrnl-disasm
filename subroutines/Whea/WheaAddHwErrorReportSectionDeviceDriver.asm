WheaAddHwErrorReportSectionDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+90↓p
                                        ; WheaReportHwErrorDeviceDriverEx+8F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     ebx, edx
                mov     r11, rcx
                xor     r10d, r10d
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BBF59
                mov     r10d, 0C0000008h
                jmp     loc_1405BC011
; ---------------------------------------------------------------------------

loc_1405BBF59:                          ; CODE XREF: WheaAddHwErrorReportSectionDeviceDriver+1C↑j
                mov     edx, [rcx+0Ch]
                lea     rcx, unk_140CDAF98
                call    sub_1405BBD54
                lea     rcx, [rax+60h]
                neg     rax
                sbb     rdx, rdx
                and     rdx, rcx
                jnz     short loc_1405BBF82
                mov     r10d, 0C00002B6h
                jmp     loc_1405BC011
; ---------------------------------------------------------------------------

loc_1405BBF82:                          ; CODE XREF: WheaAddHwErrorReportSectionDeviceDriver+45↑j
                mov     eax, [rdx+8Ch]
                cmp     [r11+4], eax
                jnb     short loc_1405BC00B
                cmp     ebx, [rdx+88h]
                ja      short loc_1405BC00B
                mov     ecx, [r11+8]
                add     ecx, ebx
                cmp     ecx, [rdx+10h]
                ja      short loc_1405BC00B
                mov     rdx, [r11+10h]
                mov     eax, [rdx]
                lea     ecx, [rax+10h]
                xor     ecx, eax
                and     ecx, 3FF0h
                xor     ecx, eax
                mov     [rdx], ecx
                mov     rdx, [r11+18h]
                mov     eax, [r11+34h]
                mov     [rdx+10h], eax
                lea     rcx, [rdx+48h]
                mov     [rdx+18h], ebx
                mov     eax, 300h
                mov     [rdx+14h], ax
                lea     rax, [rdx+2Ch]
                mov     [rdi+18h], rax
                lea     rax, [rdx+17h]
                mov     [rdi+10h], rdx
                or      byte ptr [rdx+16h], 2
                inc     dword ptr [r11+4]
                mov     [rdi+20h], rax
                lea     rax, [rcx+rbx]
                mov     [rdi+4], rcx
                mov     [rdi+0Ch], ebx
                mov     [r11+18h], rax
                lea     eax, [rbx+48h]
                add     [r11+8], eax
                mov     dword ptr [rdi], 1
                jmp     short loc_1405BC011
; ---------------------------------------------------------------------------

loc_1405BC00B:                          ; CODE XREF: WheaAddHwErrorReportSectionDeviceDriver+5C↑j
                                        ; WheaAddHwErrorReportSectionDeviceDriver+64↑j ...
                mov     r10d, 0C000009Ah

loc_1405BC011:                          ; CODE XREF: WheaAddHwErrorReportSectionDeviceDriver+24↑j
                                        ; WheaAddHwErrorReportSectionDeviceDriver+4D↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, r10d
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaAddHwErrorReportSectionDeviceDriver endp
