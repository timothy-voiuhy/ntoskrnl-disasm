RtlInitializeGenericTableAvl proc near  ; CODE XREF: sub_1406C91CC+A0↓p
                                        ; sub_1406D3178+8D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rbp, r9
                mov     rsi, rcx
                lea     r8d, [rdx+68h]
                call    memset
                mov     rax, [rsp+28h+arg_20]
                mov     [rsi+48h], rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     [rsi+58h], rbp
                mov     rbp, [rsp+28h+arg_8]
                mov     [rsi+60h], rax
                mov     [rsi], rsi
                mov     [rsi+50h], rdi
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitializeGenericTableAvl endp
