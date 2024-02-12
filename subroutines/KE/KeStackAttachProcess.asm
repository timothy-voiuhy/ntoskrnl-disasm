KeStackAttachProcess proc near          ; CODE XREF: sub_140280660+13D↑p
                                        ; sub_1402DDFE0+15D↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046D256 SIZE 000000DD BYTES

                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, gs:188h
                mov     rsi, rdx
                mov     eax, gs:32ACh
                mov     rbx, rcx
                test    eax, 10001h
                jnz     loc_14046D304
                test    dword ptr [rcx+278h], 400h
                jnz     loc_14046D304
                cmp     [rdi+0B8h], rcx
                jnz     short loc_14030F904
                mov     qword ptr [rdx+20h], 1

loc_14030F8FB:                          ; CODE XREF: KeStackAttachProcess+E2↓j
                                        ; KeStackAttachProcess+FB↓j
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14030F904:                          ; CODE XREF: KeStackAttachProcess+41↑j
                                        ; DATA XREF: .rdata:00000001400749D8↑o ...
                mov     [rsp+48h+arg_0], rbp
                mov     [rsp+48h+arg_8], r14
                mov     [rsp+48h+arg_18], r15
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046D256

loc_14030F92E:                          ; CODE XREF: KeStackAttachProcess+15D9A8↓j
                                        ; KeStackAttachProcess+15D9B2↓j ...
                mov     rbp, gs:20h
                xor     r15d, r15d
                mov     [rsp+48h+arg_10], r15d
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14046D29B

loc_14030F94F:                          ; CODE XREF: KeStackAttachProcess+12D↓j
                                        ; KeStackAttachProcess+15D9EF↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      short loc_14030F9B0
                mov     rbp, [rsp+48h+arg_0]
                xor     r9d, r9d
                movzx   r8d, r14b
                mov     rdx, rbx
                mov     rcx, rdi
                cmp     [rdi+24Ah], r15b
                jnz     short loc_14030F997

loc_14030F973:                          ; DATA XREF: .pdata:00000001400D46D0↑o
                                        ; .pdata:00000001400D46DC↑o
                lea     rax, [rdi+258h]
                mov     [rsp+48h+var_28], rax
                call    sub_14021E570
                mov     r14, [rsp+48h+arg_8]
                mov     [rsi+20h], r15
                mov     r15, [rsp+48h+arg_18]
                jmp     loc_14030F8FB
; ---------------------------------------------------------------------------

loc_14030F997:                          ; CODE XREF: KeStackAttachProcess+C1↑j
                                        ; DATA XREF: .pdata:00000001400D46DC↑o ...
                mov     [rsp+48h+var_28], rsi
                call    sub_14021E570
                mov     r14, [rsp+48h+arg_8]
                mov     r15, [rsp+48h+arg_18]
                jmp     loc_14030F8FB
; ---------------------------------------------------------------------------

loc_14030F9B0:                          ; CODE XREF: KeStackAttachProcess+A6↑j
                                        ; DATA XREF: .pdata:00000001400D46E8↑o ...
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14046D2C2

loc_14030F9C0:                          ; CODE XREF: KeStackAttachProcess+121↓j
                                        ; KeStackAttachProcess+15DA16↓j ...
                lea     rcx, [rsp+48h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14030F9C0
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_14030F94F
                jmp     loc_14046D2E9
KeStackAttachProcess endp
