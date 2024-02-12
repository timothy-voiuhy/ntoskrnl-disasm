MmAddVerifierSpecialThunks proc near    ; DATA XREF: .pdata:000000014011E668↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, cs:dword_140CFC400
                mov     ebp, r8d
                mov     r14, rdx
                mov     r15, rcx
                test    al, 1
                jz      loc_1408C7C61
                call    sub_140364580
                xor     ebx, ebx
                test    eax, eax
                jz      loc_1408C7C61
                test    dword ptr cs:qword_140CF4D00, 0FFAFFFFFh
                jnz     short loc_1408C7BCC
                mov     eax, dword ptr cs:qword_140CF4D00+4
                test    al, 2
                jnz     short loc_1408C7BCC
                test    al, 4
                jz      loc_1408C7C61

loc_1408C7BCC:                          ; CODE XREF: MmAddVerifierSpecialThunks+48↑j
                                        ; MmAddVerifierSpecialThunks+52↑j
                mov     edi, ebp
                shr     edi, 4
                test    edi, edi
                jnz     short loc_1408C7BDF
                mov     eax, 0C00000F1h
                jmp     loc_1408C7C66
; ---------------------------------------------------------------------------

loc_1408C7BDF:                          ; CODE XREF: MmAddVerifierSpecialThunks+63↑j
                call    sub_1406F51C0
                xor     edx, edx
                mov     rcx, r15
                mov     rsi, rax
                call    sub_14033EE44
                mov     r9, rax
                test    rax, rax
                jz      short loc_1408C7C50
                mov     rdx, [rax+30h]
                mov     rcx, [rsp+38h]
                cmp     rcx, rdx
                jb      short loc_1408C7C50
                mov     r8d, [rax+40h]
                mov     rcx, [rsp+38h]
                add     r8, rdx
                cmp     rcx, r8
                jnb     short loc_1408C7C50
                test    edi, edi
                jz      short loc_1408C7C37
                lea     rax, [r14+8]

loc_1408C7C20:                          ; CODE XREF: MmAddVerifierSpecialThunks+C5↓j
                mov     rcx, [rax]
                cmp     rcx, rdx
                jb      short loc_1408C7C49
                cmp     rcx, r8
                jnb     short loc_1408C7C49
                add     rax, 10h
                inc     ebx
                cmp     ebx, edi
                jb      short loc_1408C7C20

loc_1408C7C37:                          ; CODE XREF: MmAddVerifierSpecialThunks+AA↑j
                mov     r8d, ebp
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1409DA8C4
                mov     ebx, eax
                jmp     short loc_1408C7C55
; ---------------------------------------------------------------------------

loc_1408C7C49:                          ; CODE XREF: MmAddVerifierSpecialThunks+B6↑j
                                        ; MmAddVerifierSpecialThunks+BB↑j
                mov     ebx, 0C00000F0h
                jmp     short loc_1408C7C55
; ---------------------------------------------------------------------------

loc_1408C7C50:                          ; CODE XREF: MmAddVerifierSpecialThunks+87↑j
                                        ; MmAddVerifierSpecialThunks+95↑j ...
                mov     ebx, 0C00000EFh

loc_1408C7C55:                          ; CODE XREF: MmAddVerifierSpecialThunks+D7↑j
                                        ; MmAddVerifierSpecialThunks+DE↑j
                mov     rcx, rsi
                call    sub_1406F5160
                mov     eax, ebx
                jmp     short loc_1408C7C66
; ---------------------------------------------------------------------------

loc_1408C7C61:                          ; CODE XREF: MmAddVerifierSpecialThunks+29↑j
                                        ; MmAddVerifierSpecialThunks+38↑j ...
                mov     eax, 0C00000BBh

loc_1408C7C66:                          ; CODE XREF: MmAddVerifierSpecialThunks+6A↑j
                                        ; MmAddVerifierSpecialThunks+EF↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAddVerifierSpecialThunks endp
