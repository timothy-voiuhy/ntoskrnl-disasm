WheaHwErrorReportSubmitDeviceDriver proc near
                                        ; CODE XREF: WheaReportFatalHwErrorDeviceDriverEx+F0↓p
                                        ; WheaReportHwErrorDeviceDriverEx+EF↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1405BC5D0
                test    al, al
                jnz     short loc_1405BC225
                mov     edi, 0C0000008h
                jmp     loc_1405BC2F3
; ---------------------------------------------------------------------------

loc_1405BC225:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+19↑j
                mov     rcx, [rcx+28h]
                mov     eax, [rbx+8]
                mov     [rcx+8], eax
                lea     rcx, unk_140CDAF98
                mov     edx, [rbx+0Ch]
                call    sub_1405BBD54
                lea     rcx, [rax+60h]
                neg     rax
                sbb     rsi, rsi
                and     rsi, rcx
                jnz     short loc_1405BC257
                mov     edi, 0C00002B6h
                jmp     loc_1405BC2F3
; ---------------------------------------------------------------------------

loc_1405BC257:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+4B↑j
                mov     rax, [rbx+10h]
                mov     ecx, [rax]
                and     ecx, 3FF0h
                cmp     ecx, 10h
                jnb     short loc_1405BC272
                mov     edi, 0C0000023h
                jmp     loc_1405BC2F3
; ---------------------------------------------------------------------------

loc_1405BC272:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+66↑j
                mov     rdi, [rbx+18h]
                mov     edx, [rbx+64h]
                add     rdi, 7
                mov     ecx, [rbx+8]
                and     rdi, 0FFFFFFFFFFFFFFF8h
                add     ecx, edx
                cmp     ecx, [rsi+10h]
                jbe     short loc_1405BC292
                mov     edi, 0C000009Ah
                jmp     short loc_1405BC2F3
; ---------------------------------------------------------------------------

loc_1405BC292:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+89↑j
                lea     eax, [rdx-1]
                cmp     eax, 22h ; '"'
                ja      short loc_1405BC2B9
                mov     r8, rdx
                mov     rcx, rdi
                lea     rdx, [rbx+40h]
                call    memmove
                mov     eax, [rbx+64h]
                mov     [rdi+58h], eax
                movzx   eax, word ptr [rsi+3Ch]
                mov     [rdi+5Ch], ax
                jmp     short loc_1405BC2BD
; ---------------------------------------------------------------------------

loc_1405BC2B9:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+98↑j
                and     dword ptr [rdi+58h], 0

loc_1405BC2BD:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+B7↑j
                lea     rax, [rsi+2Ch]
                mov     rdx, rsi
                mov     [rdi+48h], rax
                mov     rax, [rbx+38h]
                mov     [rdi+50h], rax
                mov     rcx, [rbx+28h]
                call    cs:PshedRetrieveErrorInfo
                nop     dword ptr [rax+rax+00h]
                mov     rcx, [rbx+28h]
                call    WheaReportHwError
                mov     rcx, rbx
                mov     edi, eax
                call    sub_1405BC5EC

loc_1405BC2F3:                          ; CODE XREF: WheaHwErrorReportSubmitDeviceDriver+20↑j
                                        ; WheaHwErrorReportSubmitDeviceDriver+52↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHwErrorReportSubmitDeviceDriver endp
