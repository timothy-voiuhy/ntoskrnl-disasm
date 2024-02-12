KeProfileInterruptWithSource proc near  ; CODE XREF: sub_1404BE960+19↑p
                                        ; sub_1404D3AC0+145↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     ebx, edx
                mov     rdi, rcx
                mov     r8, [rax+0B8h]
                add     r8, 18h
                call    sub_14051C1B0
                lea     r8, qword_140C31E70
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14051C1B0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeProfileInterruptWithSource endp
