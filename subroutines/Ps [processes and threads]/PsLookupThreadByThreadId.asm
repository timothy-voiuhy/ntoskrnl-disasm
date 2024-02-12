PsLookupThreadByThreadId proc near      ; CODE XREF: sub_14062778C+1BE↑p
                                        ; sub_1406C82E0+1F↓p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, gs:188h
                mov     r14, rdx
                dec     word ptr [rsi+1E6h]
                mov     dl, 6
                call    sub_1406C80D0
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1406C7D3A
                call    PsGetCurrentServerSilo
                mov     ecx, [rbx+510h]
                mov     rdi, rax
                test    cl, 2
                jnz     short loc_1406C7D1D
                lea     rcx, [rbx+500h]
                lock or [rsp+28h+var_28], 0
                mov     rdx, [rcx]
                test    dl, 1
                jz      short loc_1406C7D13
                call    sub_140356664

loc_1406C7D13:                          ; CODE XREF: PsLookupThreadByThreadId+5C↑j
                mov     eax, [rbx+510h]
                test    al, 2
                jz      short loc_1406C7D30

loc_1406C7D1D:                          ; CODE XREF: PsLookupThreadByThreadId+48↑j
                mov     rcx, [rbx+220h]
                mov     rdx, rdi
                call    sub_140310498
                test    al, al
                jnz     short loc_1406C7D3A

loc_1406C7D30:                          ; CODE XREF: PsLookupThreadByThreadId+6B↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                xor     ebx, ebx

loc_1406C7D3A:                          ; CODE XREF: PsLookupThreadByThreadId+35↑j
                                        ; PsLookupThreadByThreadId+7E↑j
                mov     rcx, rsi
                call    sub_140245770
                test    rbx, rbx
                jz      short loc_1406C7D4E
                mov     [r14], rbx
                xor     eax, eax
                jmp     short loc_1406C7D53
; ---------------------------------------------------------------------------

loc_1406C7D4E:                          ; CODE XREF: PsLookupThreadByThreadId+95↑j
                mov     eax, 0C000000Bh

loc_1406C7D53:                          ; CODE XREF: PsLookupThreadByThreadId+9C↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsLookupThreadByThreadId endp
