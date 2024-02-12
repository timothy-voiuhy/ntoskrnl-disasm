KeRegisterNmiCallback proc near         ; CODE XREF: sub_1404F948C+F8↑p
                                        ; sub_1404F948C+1C2↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    sub_140514E04
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140514A92
                mov     rcx, rdi
                call    sub_1408BCB1C

loc_140514A92:                          ; CODE XREF: KeRegisterNmiCallback+18↑j
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRegisterNmiCallback endp
