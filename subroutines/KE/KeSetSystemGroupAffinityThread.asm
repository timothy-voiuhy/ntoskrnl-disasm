KeSetSystemGroupAffinityThread proc near
                                        ; CODE XREF: sub_1402BA410+109↑p
                                        ; sub_1403002B8+64↓p ...

var_48          = xmmword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140451AC6 SIZE 000000D7 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movzx   eax, cs:word_140CFC840
                mov     rsi, rcx
                movzx   ecx, word ptr [rcx+8]
                xorps   xmm0, xmm0
                and     [rsp+68h+arg_8], 0
                mov     r13, rdx
                mov     ebp, 1
                movups  [rsp+68h+var_48], xmm0
                cmp     cx, ax
                jnb     loc_140451AC6
                lea     rdx, word_140CFC840
                mov     rcx, [rdx+rcx*8+8]
                test    [rsi], rcx
                jz      loc_140451AC6
                movzx   ecx, word ptr [rsi+0Eh]
                or      cx, [rsi+0Ch]
                or      cx, [rsi+0Ah]
                jnz     loc_140451AC6
                movzx   eax, word ptr [rsi+8]
                mov     r12b, bpl
                mov     rax, [rdx+rax*8+8]
                and     [rsi], rax

loc_1402BA7F7:                          ; CODE XREF: KeSetSystemGroupAffinityThread+197349↓j
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140451ACE

loc_1402BA812:                          ; CODE XREF: KeSetSystemGroupAffinityThread+197351↓j
                                        ; KeSetSystemGroupAffinityThread+19735B↓j ...
                mov     r15, gs:20h
                mov     rdi, gs:20h
                and     [rsp+68h+arg_0], 0
                mov     rbx, [r15+8]

loc_1402BA82D:                          ; CODE XREF: KeSetSystemGroupAffinityThread+1973EE↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140451B11

loc_1402BA83D:                          ; CODE XREF: KeSetSystemGroupAffinityThread+197395↓j
                                        ; KeSetSystemGroupAffinityThread+1973A3↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140451B37
                mov     eax, [rbx+74h]
                mov     ebp, [rbx+24Ch]
                test    al, 8
                jnz     loc_1402BA8E3
                or      eax, 8
                mov     [rbx+74h], eax

loc_1402BA861:                          ; CODE XREF: KeSetSystemGroupAffinityThread+17B↓j
                test    r12b, r12b
                jz      short loc_1402BA87C
                lea     r9, [rsp+68h+arg_8]
                mov     r8d, 500h
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402BA908

loc_1402BA87C:                          ; CODE XREF: KeSetSystemGroupAffinityThread+E4↑j
                mov     edi, [rbx+24Ch]
                mov     rcx, rbx
                call    sub_1403261B0
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jnz     loc_140451B73

loc_1402BA89A:                          ; CODE XREF: KeSetSystemGroupAffinityThread+197407↓j
                test    dword ptr cs:xmmword_140CFC480+4, 1000h
                jnz     loc_140451B8C

loc_1402BA8AA:                          ; CODE XREF: KeSetSystemGroupAffinityThread+197418↓j
                mov     r8b, r14b
                lea     rdx, [rsp+68h+arg_8]
                mov     rcx, r15
                call    sub_14028D950
                test    r13, r13
                jz      short loc_1402BA8CA
                movups  xmm0, [rsp+68h+var_48]
                movdqu  xmmword ptr [r13+0], xmm0

loc_1402BA8CA:                          ; CODE XREF: KeSetSystemGroupAffinityThread+13D↑j
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BA8E3:                          ; CODE XREF: KeSetSystemGroupAffinityThread+D5↑j
                movzx   eax, word ptr [rbx+248h]
                mov     word ptr [rsp+68h+var_48+8], ax
                mov     rax, [rbx+240h]
                mov     qword ptr [rsp+68h+var_48], rax
                jmp     loc_1402BA861
KeSetSystemGroupAffinityThread endp
