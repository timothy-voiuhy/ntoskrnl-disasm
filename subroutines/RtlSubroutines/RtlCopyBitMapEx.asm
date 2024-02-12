RtlCopyBitMapEx proc near               ; CODE XREF: sub_1406947D0+84↓p
                                        ; sub_1408D7BC4+F1↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047C36E SIZE 00000155 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     r14, rdx
                mov     rbx, [rdx]
                mov     r15, rcx
                sub     rbx, r8
                cmp     rax, rbx
                cmovbe  rbx, rax
                test    rbx, rbx
                jz      short loc_14033E977
                mov     rcx, [rdx+8]
                mov     rax, r8
                mov     r11, [r15+8]
                shr     rax, 6
                lea     rdx, [rcx+rax*8]
                cmp     r11, rdx
                ja      short loc_14033E944
                lea     rax, [rbx-1]
                shr     rax, 6
                lea     rax, [r11+rax*8]
                cmp     rdx, rax
                jbe     loc_14047C36E

loc_14033E944:                          ; CODE XREF: RtlCopyBitMapEx+4D↑j
                mov     rsi, r8
                shr     rsi, 3
                test    r8b, 7
                jnz     loc_14047C382
                mov     rdi, rbx
                and     ebx, 7
                shr     rdi, 3
                test    rdi, rdi
                jz      short loc_14033E972
                add     rcx, rsi
                mov     r8, rdi
                mov     rdx, r11
                call    memmove

loc_14033E972:                          ; CODE XREF: RtlCopyBitMapEx+82↑j
                test    rbx, rbx
                jnz     short loc_14033E995

loc_14033E977:                          ; CODE XREF: RtlCopyBitMapEx+35↑j
                                        ; RtlCopyBitMapEx+E6↓j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E995:                          ; CODE XREF: RtlCopyBitMapEx+95↑j
                mov     r9, [r14+8]
                mov     r10d, 1
                mov     rcx, rbx
                add     r9, rsi
                add     r9, rdi
                mov     r8d, r10d
                shl     r8b, cl
                sub     r8b, r10b
                mov     al, r8b
                not     al
                and     [r9], al
                mov     rax, [r15+8]
                mov     cl, [rdi+rax]
                and     cl, r8b
                or      [r9], cl
                jmp     short loc_14033E977
RtlCopyBitMapEx endp
