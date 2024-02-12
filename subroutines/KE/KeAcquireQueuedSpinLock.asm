KeAcquireQueuedSpinLock proc near       ; CODE XREF: sub_14021A330+689↑p
                                        ; sub_14021A330+8E0↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014043B2F2 SIZE 0000006C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r10, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043B2F2

loc_140262DFD:                          ; CODE XREF: KeAcquireQueuedSpinLock+1D8524↓j
                                        ; KeAcquireQueuedSpinLock+1D852E↓j ...
                mov     rbx, gs:28h
                shl     r10, 4
                add     rbx, r10
                mov     rdi, [rbx+8]
                mov     rcx, gs:20h
                mov     rax, [rcx+84B8h]
                test    rax, rax
                jnz     loc_14043B337

loc_140262E2A:                          ; CODE XREF: KeAcquireQueuedSpinLock+1D856B↓j
                                        ; KeAcquireQueuedSpinLock+1D857D↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     short loc_140262E53
                mov     rdx, rbx
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_140262E73

loc_140262E3E:                          ; CODE XREF: KeAcquireQueuedSpinLock+AB↓j
                movzx   eax, sil
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140262E53:                          ; CODE XREF: KeAcquireQueuedSpinLock+61↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14051652C
                mov     rbx, [rsp+28h+arg_0]
                movzx   eax, sil
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140262E73:                          ; CODE XREF: KeAcquireQueuedSpinLock+6C↑j
                mov     rcx, rbx
                call    sub_14025FC20
                jmp     short loc_140262E3E
KeAcquireQueuedSpinLock endp
