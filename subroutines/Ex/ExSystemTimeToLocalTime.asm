ExSystemTimeToLocalTime proc near       ; CODE XREF: sub_1407A8B4C+A1↓p
                                        ; sub_140799CC4+BA5F0↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_1402B95B0
                mov     rcx, [rbx]
                mov     rbx, [rsp+28h+arg_0]
                mov     r8, [rax+428h]
                sub     rcx, [r8+1B8h]
                mov     [rdi], rcx
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSystemTimeToLocalTime endp
