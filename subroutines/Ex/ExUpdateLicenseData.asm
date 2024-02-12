ExUpdateLicenseData proc near           ; DATA XREF: .pdata:00000001401076E8↑o
                                        ; ntoskrnl_25+4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     edi, ecx
                call    sub_1402B95B0
                mov     r8, rbx
                mov     edx, edi
                mov     rcx, [rax+388h]
                mov     rax, cs:qword_140D2D500
                test    rax, rax
                jz      short loc_140722E8D
                call    sub_1404079D0

loc_140722E81:                          ; CODE XREF: ExUpdateLicenseData+42↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140722E8D:                          ; CODE XREF: ExUpdateLicenseData+2A↑j
                call    sub_14094F950
                jmp     short loc_140722E81
ExUpdateLicenseData endp
