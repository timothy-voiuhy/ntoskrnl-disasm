KeAcquireGuardedMutex proc near         ; CODE XREF: sub_14069FDE0+76↓p
                                        ; sub_14069FDE0+19F↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     r8d, r8d
                xor     edx, edx
                mov     rdi, rcx
                call    sub_140244C10
                mov     rbx, rax
                mov     rsi, cr8
                mov     eax, 1
                mov     cr8, rax
                lock btr dword ptr [rdi], 0
                jnb     short loc_1402F3641

loc_1402F3613:                          ; CODE XREF: KeAcquireGuardedMutex+6C↓j
                test    rbx, rbx
                jz      short loc_1402F361C
                or      byte ptr [rbx+1Ah], 1

loc_1402F361C:                          ; CODE XREF: KeAcquireGuardedMutex+36↑j
                mov     rax, gs:188h
                mov     rbx, [rsp+28h+arg_0]
                mov     [rdi+8], rax
                movzx   eax, sil
                mov     rsi, [rsp+28h+arg_8]
                mov     [rdi+30h], eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F3641:                          ; CODE XREF: KeAcquireGuardedMutex+31↑j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     short loc_1402F3613
KeAcquireGuardedMutex endp
