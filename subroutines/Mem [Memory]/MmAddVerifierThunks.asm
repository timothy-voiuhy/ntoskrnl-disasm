MmAddVerifierThunks proc near           ; CODE XREF: sub_140687200+856↑p
                                        ; DATA XREF: .pdata:000000014011E674↑o

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
                mov     r15d, edx
                mov     r14, rcx
                test    al, 1
                jz      loc_1408C7D9C
                call    sub_140364580
                xor     ebx, ebx
                test    eax, eax
                jz      loc_1408C7D9C
                test    dword ptr cs:qword_140CF4D00, 0FFAFFFFFh
                jnz     short loc_1408C7CE9
                mov     eax, dword ptr cs:qword_140CF4D00+4
                test    al, 2
                jnz     short loc_1408C7CE9
                test    al, 4
                jz      loc_1408C7D9C

loc_1408C7CE9:                          ; CODE XREF: MmAddVerifierThunks+45↑j
                                        ; MmAddVerifierThunks+4F↑j
                mov     edi, r15d
                mov     rsi, r14
                shr     edi, 4
                test    edi, edi
                jnz     short loc_1408C7D00
                mov     eax, 0C00000EFh
                jmp     loc_1408C7DA1
; ---------------------------------------------------------------------------

loc_1408C7D00:                          ; CODE XREF: MmAddVerifierThunks+64↑j
                call    sub_1406F51C0
                mov     rcx, [r14]
                xor     edx, edx
                mov     rbp, rax
                call    sub_14033EE44
                mov     r8, rax
                test    rax, rax
                jz      short loc_1408C7D8D
                mov     r10, [rax+30h]
                mov     edx, ebx
                mov     r9d, [rax+40h]
                lea     rax, PsLoadedModuleList
                mov     rcx, qword ptr cs:PsLoadedModuleList
                add     r9, r10
                jmp     short loc_1408C7D46
; ---------------------------------------------------------------------------

loc_1408C7D37:                          ; CODE XREF: MmAddVerifierThunks+B9↓j
                cmp     r8, rcx
                jz      short loc_1408C7D8D
                inc     edx
                cmp     edx, 2
                jnb     short loc_1408C7D4B
                mov     rcx, [rcx]

loc_1408C7D46:                          ; CODE XREF: MmAddVerifierThunks+A5↑j
                cmp     rcx, rax
                jnz     short loc_1408C7D37

loc_1408C7D4B:                          ; CODE XREF: MmAddVerifierThunks+B1↑j
                test    edi, edi
                jz      short loc_1408C7D74

loc_1408C7D4F:                          ; CODE XREF: MmAddVerifierThunks+E2↓j
                mov     rax, [rsi]
                cmp     rax, r10
                jb      short loc_1408C7D8D
                cmp     rax, r9
                jnb     short loc_1408C7D8D
                mov     rax, [rsi+8]
                cmp     rax, r10
                jb      short loc_1408C7D8D
                cmp     rax, r9
                jnb     short loc_1408C7D8D
                add     rsi, 10h
                inc     ebx
                cmp     ebx, edi
                jb      short loc_1408C7D4F

loc_1408C7D74:                          ; CODE XREF: MmAddVerifierThunks+BD↑j
                mov     edx, r15d
                mov     rcx, r14
                call    sub_1409DA840
                mov     rcx, rbp
                mov     ebx, eax
                call    sub_1406F5160
                mov     eax, ebx
                jmp     short loc_1408C7DA1
; ---------------------------------------------------------------------------

loc_1408C7D8D:                          ; CODE XREF: MmAddVerifierThunks+88↑j
                                        ; MmAddVerifierThunks+AA↑j ...
                mov     rcx, rbp
                call    sub_1406F5160
                mov     eax, 0C00000F0h
                jmp     short loc_1408C7DA1
; ---------------------------------------------------------------------------

loc_1408C7D9C:                          ; CODE XREF: MmAddVerifierThunks+26↑j
                                        ; MmAddVerifierThunks+35↑j ...
                mov     eax, 0C00000BBh

loc_1408C7DA1:                          ; CODE XREF: MmAddVerifierThunks+6B↑j
                                        ; MmAddVerifierThunks+FB↑j ...
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
MmAddVerifierThunks endp
