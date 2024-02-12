KeRegisterBoundCallback proc near       ; DATA XREF: .pdata:00000001400F3528↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     ebx, ebx
                call    sub_1408C99B4
                test    eax, eax
                jz      short loc_140514A52
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140799480
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140514A52
                xor     r8d, r8d
                lea     rcx, qword_140C31420
                mov     rdx, rax
                call    sub_1403AF5DC
                test    al, al
                jz      short loc_140514A4A
                mov     rbx, rdi
                jmp     short loc_140514A52
; ---------------------------------------------------------------------------

loc_140514A4A:                          ; CODE XREF: KeRegisterBoundCallback+43↑j
                mov     rcx, rsi
                call    sub_140718840

loc_140514A52:                          ; CODE XREF: KeRegisterBoundCallback+1B↑j
                                        ; KeRegisterBoundCallback+2D↑j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRegisterBoundCallback endp
