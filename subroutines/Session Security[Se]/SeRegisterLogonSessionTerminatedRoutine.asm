SeRegisterLogonSessionTerminatedRoutine proc near
                                        ; DATA XREF: .pdata:0000000140122AF0↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                test    rcx, rcx
                jnz     short loc_140924B59
                mov     eax, 0C000000Dh
                jmp     short loc_140924BC8
; ---------------------------------------------------------------------------

loc_140924B59:                          ; CODE XREF: SeRegisterLogonSessionTerminatedRoutine+10↑j
                mov     edx, 10h
                mov     r8d, 53466553h
                lea     ecx, [rdx-0Fh]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140924B7B
                mov     eax, 0C000009Ah
                jmp     short loc_140924BC8
; ---------------------------------------------------------------------------

loc_140924B7B:                          ; CODE XREF: SeRegisterLogonSessionTerminatedRoutine+32↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140CF4498
                call    ExAcquireFastMutexUnsafe
                mov     rax, cs:qword_140D2D2D0
                lea     rcx, dword_140CF4498
                mov     [rbx], rax
                mov     [rbx+8], rdi
                mov     cs:qword_140D2D2D0, rbx
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax

loc_140924BC8:                          ; CODE XREF: SeRegisterLogonSessionTerminatedRoutine+17↑j
                                        ; SeRegisterLogonSessionTerminatedRoutine+39↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeRegisterLogonSessionTerminatedRoutine endp
