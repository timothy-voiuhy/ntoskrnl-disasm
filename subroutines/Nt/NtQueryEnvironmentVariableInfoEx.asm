NtQueryEnvironmentVariableInfoEx proc near
                                        ; CODE XREF: sub_140773834+D6E52↑p
                                        ; DATA XREF: .pdata:000000014012483C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:dword_140C19590, 2
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     ebp, ecx
                jz      short loc_14095602F
                mov     eax, 0C0000002h
                jmp     short loc_140956092
; ---------------------------------------------------------------------------

loc_14095602F:                          ; CODE XREF: NtQueryEnvironmentVariableInfoEx+26↑j
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_140956048
                mov     eax, 0C0000061h
                jmp     short loc_140956092
; ---------------------------------------------------------------------------

loc_140956048:                          ; CODE XREF: NtQueryEnvironmentVariableInfoEx+3F↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C168A0
                call    ExAcquireFastMutexUnsafe
                mov     r9, rbx
                mov     r8, rdi
                mov     rdx, rsi
                mov     ecx, ebp
                call    sub_14089B354
                lea     rcx, dword_140C168A0
                mov     ebx, eax
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx

loc_140956092:                          ; CODE XREF: NtQueryEnvironmentVariableInfoEx+2D↑j
                                        ; NtQueryEnvironmentVariableInfoEx+46↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtQueryEnvironmentVariableInfoEx endp
