ExQueryWnfStateData proc near           ; CODE XREF: sub_1403CEB80+3D↑p
                                        ; sub_140568FD0+27↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rbx, r9
                mov     rsi, r8
                mov     rbp, rdx
                dec     word ptr [rax+1E4h]
                mov     rdx, rcx
                call    sub_14071B698
                xor     r14d, r14d
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14071B688
                mov     r9d, [rbx]
                mov     r8, rsi
                mov     rdx, rbp
                mov     [rsp+38h+var_18], rbx
                mov     rcx, rax
                call    sub_1405EF944
                test    eax, eax
                mov     ebx, eax
                cmovns  ebx, r14d
                lea     rcx, [rdi+8]
                call    sub_14024C380

loc_14071B65C:                          ; CODE XREF: ExQueryWnfStateData+9D↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14071B688:                          ; CODE XREF: ExQueryWnfStateData+43↑j
                mov     ebx, 0C0000034h
                jmp     short loc_14071B65C
ExQueryWnfStateData endp
