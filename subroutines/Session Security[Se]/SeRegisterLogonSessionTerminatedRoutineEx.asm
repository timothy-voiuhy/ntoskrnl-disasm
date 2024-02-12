SeRegisterLogonSessionTerminatedRoutineEx proc near
                                        ; DATA XREF: .rdata:00000001400ACA64↑o
                                        ; .pdata:000000014010ED80↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408634EE SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_1408634EE
                mov     edx, 18h
                mov     r8d, 53466553h
                lea     ecx, [rdx-17h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1407CF92B
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140CF4498
                call    ExAcquireFastMutexUnsafe
                mov     rax, cs:qword_140D2D340
                lea     rcx, dword_140CF4498
                mov     [rbx], rax
                mov     [rbx+8], rdi
                mov     [rbx+10h], rsi
                mov     cs:qword_140D2D340, rbx
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax

loc_1407CF91A:                          ; CODE XREF: SeRegisterLogonSessionTerminatedRoutineEx+A0↓j
                                        ; SeRegisterLogonSessionTerminatedRoutineEx+93C63↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407CF92B:                          ; CODE XREF: SeRegisterLogonSessionTerminatedRoutineEx+37↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1407CF91A
SeRegisterLogonSessionTerminatedRoutineEx endp
