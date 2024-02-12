ExInterlockedExtendZone proc near       ; DATA XREF: .pdata:00000001400FA0BC↑o

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
                mov     rsi, rcx
                mov     rbp, r9
                mov     rcx, r9
                mov     ebx, r8d
                mov     rdi, rdx
                call    KeAcquireSpinLockRaiseToDpc
                mov     r8d, ebx
                movzx   r14d, al
                mov     rdx, rdi
                mov     rcx, rsi
                call    ExExtendZone
                mov     rcx, rbp
                mov     ebx, eax
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jz      short loc_1405B6FD1
                test    cl, 1
                jz      short loc_1405B6FD1
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_1405B6FD1
                cmp     r14b, 0Fh
                ja      short loc_1405B6FD1
                cmp     cl, 2
                jb      short loc_1405B6FD1
                mov     r10, gs:20h
                lea     ecx, [r14+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B6FD1
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B6FD1:                          ; CODE XREF: ExInterlockedExtendZone+51↑j
                                        ; ExInterlockedExtendZone+56↑j ...
                mov     cr8, r14
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
ExInterlockedExtendZone endp
