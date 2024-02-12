SeUnregisterLogonSessionTerminatedRoutine proc near
                                        ; DATA XREF: .pdata:0000000140122AFC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rsi, rcx
                test    rcx, rcx
                jnz     short loc_140924C03
                mov     eax, 0C000000Dh
                jmp     loc_140924C95
; ---------------------------------------------------------------------------

loc_140924C03:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+17↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140CF4498
                call    ExAcquireFastMutexUnsafe
                mov     rbx, cs:qword_140D2D2D0
                lea     rdx, qword_140D2D2D0
                test    rbx, rbx
                jz      short loc_140924C74

loc_140924C32:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+61↓j
                cmp     [rbx+8], rsi
                jz      short loc_140924C43
                mov     rdx, rbx
                mov     rbx, [rbx]
                test    rbx, rbx
                jnz     short loc_140924C32

loc_140924C43:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+56↑j
                test    rbx, rbx
                jz      short loc_140924C74
                mov     rax, [rbx]
                lea     rcx, dword_140CF4498
                mov     [rdx], rax
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_140924C93
; ---------------------------------------------------------------------------

loc_140924C74:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+50↑j
                                        ; SeUnregisterLogonSessionTerminatedRoutine+66↑j
                lea     rcx, dword_140CF4498
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     edi, 0C0000225h

loc_140924C93:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+92↑j
                mov     eax, edi

loc_140924C95:                          ; CODE XREF: SeUnregisterLogonSessionTerminatedRoutine+1E↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeUnregisterLogonSessionTerminatedRoutine endp
