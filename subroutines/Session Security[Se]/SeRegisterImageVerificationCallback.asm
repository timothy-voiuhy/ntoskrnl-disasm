SeRegisterImageVerificationCallback proc near
                                        ; DATA XREF: .pdata:000000014010F26C↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                push    rbx
                sub     rsp, 20h
                mov     rax, r8
                cmp     ecx, 1
                jnz     short loc_1407D30BA
                xor     ebx, ebx
                test    edx, edx
                jnz     short loc_1407D30C1
                cmp     [rsp+28h+arg_20], rbx
                jnz     short loc_1407D30C8
                mov     rcx, cs:qword_140C19288
                mov     r8, r9
                mov     rdx, rax
                call    ExRegisterCallback
                test    rax, rax
                jz      short loc_1407D30CF
                lock inc cs:dword_140CEC724
                mov     rcx, [rsp+28h+arg_28]
                mov     [rcx], rax

loc_1407D30B1:                          ; CODE XREF: SeRegisterImageVerificationCallback+4F↓j
                                        ; SeRegisterImageVerificationCallback+56↓j ...
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407D30BA:                          ; CODE XREF: SeRegisterImageVerificationCallback+C↑j
                mov     ebx, 0C00000EFh
                jmp     short loc_1407D30B1
; ---------------------------------------------------------------------------

loc_1407D30C1:                          ; CODE XREF: SeRegisterImageVerificationCallback+12↑j
                mov     ebx, 0C00000F0h
                jmp     short loc_1407D30B1
; ---------------------------------------------------------------------------

loc_1407D30C8:                          ; CODE XREF: SeRegisterImageVerificationCallback+19↑j
                mov     ebx, 0C00000F3h
                jmp     short loc_1407D30B1
; ---------------------------------------------------------------------------

loc_1407D30CF:                          ; CODE XREF: SeRegisterImageVerificationCallback+30↑j
                mov     ebx, 0C0000017h
                jmp     short loc_1407D30B1
SeRegisterImageVerificationCallback endp
