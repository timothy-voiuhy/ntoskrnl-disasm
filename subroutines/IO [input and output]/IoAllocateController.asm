IoAllocateController proc near          ; DATA XREF: .pdata:00000001400F26DC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rdx
                mov     [rdx+68h], r8
                mov     rdi, rcx
                mov     [rdx+70h], r9
                add     rdx, 50h ; 'P'
                add     rcx, 10h
                mov     rsi, r9
                mov     rbp, r8
                call    KeInsertDeviceQueue
                test    al, al
                jnz     short loc_14050597B
                mov     rdx, [rbx+20h]
                mov     r9, rsi
                xor     r8d, r8d
                mov     rcx, rbx
                mov     rax, rbp
                call    sub_1404079D0
                cmp     eax, 2
                jnz     short loc_14050597B
                mov     rcx, rdi
                call    IoFreeController

loc_14050597B:                          ; CODE XREF: IoAllocateController+37↑j
                                        ; IoAllocateController+51↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateController endp
