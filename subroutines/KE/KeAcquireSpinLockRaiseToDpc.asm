KeAcquireSpinLockRaiseToDpc proc near   ; CODE XREF: sub_1402000B0+2D↑p
                                        ; sub_140208198+54↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140431644 SIZE 000000A1 BYTES

                mov     [rsp+arg_8], rbx
                push    rsi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140431644

loc_140242F88:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+1EE6E6↓j
                                        ; KeAcquireSpinLockRaiseToDpc+1EE6F0↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140431689

loc_140242F95:                          ; DATA XREF: .rdata:000000014005623C↑o
                                        ; .rdata:0000000140056250↑o ...
                mov     [rsp+28h+arg_0], rdi
                mov     rdi, gs:20h
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140431697

loc_140242FB3:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+1EE73B↓j
                                        ; KeAcquireSpinLockRaiseToDpc+1EE74A↓j ...
                lock bts qword ptr [rbx], 0
                jb      short loc_140242FD0

loc_140242FBB:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+88↓j
                mov     rdi, [rsp+28h+arg_0]

loc_140242FC0:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+1EE732↓j
                                        ; DATA XREF: .pdata:00000001400CBEF8↑o ...
                mov     rbx, [rsp+28h+arg_8]
                movzx   eax, sil
                add     rsp, 20h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140242FD0:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+59↑j
                                        ; DATA XREF: .pdata:00000001400CBF04↑o ...
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_1404316BE

loc_140242FE0:                          ; CODE XREF: KeAcquireSpinLockRaiseToDpc+1EE762↓j
                                        ; KeAcquireSpinLockRaiseToDpc+1EE771↓j ...
                mov     rcx, rbx
                call    sub_140300EA0
                jmp     short loc_140242FBB
KeAcquireSpinLockRaiseToDpc endp
