LsaLookupAuthenticationPackage proc near
                                        ; DATA XREF: .pdata:000000014010F29C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, rcx
                mov     rdi, r8
                mov     rcx, cs:qword_140C1D8C8
                mov     rsi, rdx
                mov     ebx, 0C0000002h
                call    sub_140309D44
                test    rax, rax
                jz      short loc_1407D3293
                mov     rax, [rax+20h]
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1404079D0
                mov     rcx, cs:qword_140C1D8C8
                mov     ebx, eax
                call    sub_140309D28

loc_1407D3293:                          ; CODE XREF: LsaLookupAuthenticationPackage+31↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LsaLookupAuthenticationPackage endp
