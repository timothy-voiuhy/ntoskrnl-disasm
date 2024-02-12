NtGetEnvironmentVariableEx proc near    ; DATA XREF: .pdata:00000001401247AC↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140C19590, 2
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                jz      short loc_140955710
                mov     eax, 0C0000002h
                jmp     short loc_14095577E
; ---------------------------------------------------------------------------

loc_140955710:                          ; CODE XREF: NtGetEnvironmentVariableEx+27↑j
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_140955729
                mov     eax, 0C0000061h
                jmp     short loc_14095577E
; ---------------------------------------------------------------------------

loc_140955729:                          ; CODE XREF: NtGetEnvironmentVariableEx+40↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C168A0
                call    ExAcquireFastMutexUnsafe
                mov     rax, [rsp+38h+arg_20]
                mov     r9, rbx
                mov     r8, rdi
                mov     [rsp+38h+var_18], rax
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_14089B1CC
                lea     rcx, dword_140C168A0
                mov     ebx, eax
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx

loc_14095577E:                          ; CODE XREF: NtGetEnvironmentVariableEx+2E↑j
                                        ; NtGetEnvironmentVariableEx+47↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtGetEnvironmentVariableEx endp
