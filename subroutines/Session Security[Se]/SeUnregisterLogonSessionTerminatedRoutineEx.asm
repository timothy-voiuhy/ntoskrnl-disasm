SeUnregisterLogonSessionTerminatedRoutineEx proc near
                                        ; DATA XREF: .pdata:0000000140122B08↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbp, rdx
                mov     rsi, rcx
                test    rcx, rcx
                jnz     short loc_140924CDB
                mov     eax, 0C000000Dh
                jmp     loc_140924D73
; ---------------------------------------------------------------------------

loc_140924CDB:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+1F↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140CF4498
                call    ExAcquireFastMutexUnsafe
                mov     rbx, cs:qword_140D2D340
                lea     rdx, qword_140D2D340
                test    rbx, rbx
                jz      short loc_140924D52

loc_140924D0A:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+6F↓j
                cmp     [rbx+8], rsi
                jnz     short loc_140924D16
                cmp     [rbx+10h], rbp
                jz      short loc_140924D21

loc_140924D16:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+5E↑j
                mov     rdx, rbx
                mov     rbx, [rbx]
                test    rbx, rbx
                jnz     short loc_140924D0A

loc_140924D21:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+64↑j
                test    rbx, rbx
                jz      short loc_140924D52
                mov     rax, [rbx]
                lea     rcx, dword_140CF4498
                mov     [rdx], rax
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_140924D71
; ---------------------------------------------------------------------------

loc_140924D52:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+58↑j
                                        ; SeUnregisterLogonSessionTerminatedRoutineEx+74↑j
                lea     rcx, dword_140CF4498
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     edi, 0C0000225h

loc_140924D71:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+A0↑j
                mov     eax, edi

loc_140924D73:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutineEx+26↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeUnregisterLogonSessionTerminatedRoutineEx endp
