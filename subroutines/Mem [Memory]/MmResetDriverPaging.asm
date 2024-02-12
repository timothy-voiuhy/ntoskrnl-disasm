MmResetDriverPaging proc near           ; DATA XREF: .pdata:0000000140104D48↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdx, rcx
                xor     ecx, ecx
                call    sub_1406F4C0C
                mov     rsi, rax
                test    rax, rax
                jz      loc_1406F4B8E
                mov     rbp, [rax+30h]
                mov     rcx, rbp
                call    RtlImageNtHeader
                mov     rcx, rsi
                mov     rbx, rax
                call    sub_1406F5908
                movzx   ecx, word ptr [rbx+14h]
                lea     rdi, [rbx+18h]
                movzx   ebx, word ptr [rbx+6]
                add     rdi, rcx
                test    ebx, ebx
                jz      short loc_1406F4B8E

loc_1406F4B34:                          ; CODE XREF: MmResetDriverPaging+AC↓j
                test    dword ptr [rdi+24h], 2000000h
                jnz     short loc_1406F4B85
                mov     rcx, rdi
                call    sub_1406F4BAC
                test    eax, eax
                jnz     short loc_1406F4B85
                mov     ecx, [rdi+10h]
                mov     eax, [rdi+8]
                cmp     ecx, eax
                mov     edx, [rdi+0Ch]
                cmovb   ecx, eax
                mov     eax, ecx
                lea     rcx, [rbp-1]
                add     rax, rdx
                add     rcx, rax
                call    sub_14026B560
                lea     rcx, [rdx+rbp]
                mov     r8, rax
                call    sub_14026B560
                mov     rdx, rax
                mov     rcx, rsi
                mov     r9d, 2
                call    sub_140276020

loc_1406F4B85:                          ; CODE XREF: MmResetDriverPaging+5B↑j
                                        ; MmResetDriverPaging+67↑j
                add     rdi, 28h ; '('
                add     ebx, 0FFFFFFFFh
                jnz     short loc_1406F4B34

loc_1406F4B8E:                          ; CODE XREF: MmResetDriverPaging+24↑j
                                        ; MmResetDriverPaging+52↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmResetDriverPaging endp
