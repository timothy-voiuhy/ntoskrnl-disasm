PsSuspendProcess proc near              ; CODE XREF: sub_14090C7B0+59↑p
                                        ; sub_14090DE90+4E↑p
                                        ; DATA XREF: ...

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
                sub     rsp, 20h
                mov     rbp, gs:188h
                mov     rsi, rcx
                dec     word ptr [rbp+1E4h]
                lea     r14, [rcx+458h]
                mov     rcx, r14
                call    sub_14024C840
                cmp     al, 1
                jnz     short loc_14090DF8D
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1406A2900
                xor     ebx, ebx
                jmp     short loc_14090DF7B
; ---------------------------------------------------------------------------

loc_14090DF5D:                          ; CODE XREF: PsSuspendProcess+71↓j
                test    dword ptr [rdi+74h], 200000h
                jnz     short loc_14090DF70
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406ABCC0

loc_14090DF70:                          ; CODE XREF: PsSuspendProcess+54↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406A2900

loc_14090DF7B:                          ; CODE XREF: PsSuspendProcess+4B↑j
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14090DF5D
                mov     rcx, r14
                call    sub_14024C380
                jmp     short loc_14090DF92
; ---------------------------------------------------------------------------

loc_14090DF8D:                          ; CODE XREF: PsSuspendProcess+3D↑j
                mov     ebx, 0C000010Ah

loc_14090DF92:                          ; CODE XREF: PsSuspendProcess+7B↑j
                test    dword ptr [rsi+87Ch], 80000h
                jz      short loc_14090DFAE
                xor     r9d, r9d
                mov     r8, rsi
                mov     rdx, rbp
                mov     ecx, ebx
                call    sub_14093D16C

loc_14090DFAE:                          ; CODE XREF: PsSuspendProcess+8C↑j
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSuspendProcess endp
