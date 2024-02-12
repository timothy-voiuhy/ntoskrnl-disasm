ExLocalTimeToSystemTime proc near       ; CODE XREF: sub_1407A8B4C+FE↓p
                                        ; sub_1407A9004+5A1↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_1402B95B0
                mov     r8, [rax+428h]
                mov     rcx, [r8+1B8h]
                add     rcx, [rbx]
                mov     rbx, [rsp+28h+arg_0]
                mov     [rdi], rcx
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExLocalTimeToSystemTime endp
