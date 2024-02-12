KeQueryUnbiasedInterruptTimePrecise proc near
                                        ; CODE XREF: sub_1403196AC+4E↑p
                                        ; DATA XREF: .pdata:00000001400D5090↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, rcx
                mov     r12, 0FFFFF780000003B0h
                mov     r13, 0FFFFF78000000340h

loc_140319E3B:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+C3↓j
                mov     rdi, [r12]
                xor     r14d, r14d
                mov     [rsp+58h+arg_0], rdi
                mov     r12, 0FFFFF78000000350h
                mov     rdi, 0FFFFF78000000008h

loc_140319E5B:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+E4↓j
                                        ; KeQueryUnbiasedInterruptTimePrecise+EB↓j
                mov     rbx, [r13+0]
                test    bl, 1
                jnz     loc_140319EF2
                mov     rsi, [r12]
                xor     ecx, ecx
                mov     rbp, [rdi]
                call    KeQueryPerformanceCounter
                mov     rdx, rax
                mov     rax, [r13+0]
                cmp     rax, rbx
                jnz     short loc_140319EF9
                mov     rdi, [rsp+58h+arg_0]
                mov     r12, 0FFFFF780000003B0h
                mov     [r15], rdx
                cmp     rdx, rsi
                jbe     short loc_140319EC8
                mov     rax, 0FFFFF78000000360h
                sub     rdx, rsi
                dec     rdx
                mov     r8, [rax]
                mov     al, ds:0FFFFF78000000369h
                test    al, al
                jz      short loc_140319EBF
                movzx   ecx, al
                shl     rdx, cl

loc_140319EBF:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+A7↑j
                mov     rax, r8
                mul     rdx
                mov     r14, rdx

loc_140319EC8:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+87↑j
                mov     rcx, [r12]
                lea     rax, [r14+rbp]
                cmp     rdi, rcx
                jnz     loc_140319E3B
                mov     rbx, [rsp+58h+arg_10]
                sub     rax, rdi
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140319EF2:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+52↑j
                pause
                jmp     loc_140319E5B
; ---------------------------------------------------------------------------

loc_140319EF9:                          ; CODE XREF: KeQueryUnbiasedInterruptTimePrecise+70↑j
                pause
                jmp     loc_140319E5B
KeQueryUnbiasedInterruptTimePrecise endp
