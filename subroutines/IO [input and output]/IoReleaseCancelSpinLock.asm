IoReleaseCancelSpinLock proc near       ; CODE XREF: sub_14024DBF0+1A9↑p
                                        ; sub_14024DBF0+234↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046E0A0 SIZE 0000009E BYTES

                push    rdi
                sub     rsp, 20h

loc_140312DB6:                          ; DATA XREF: .rdata:00000001400778B8↑o
                                        ; .rdata:00000001400778CC↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     rbx, gs:28h
                add     rbx, 70h ; 'p'
                movzx   edi, cl
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14046E0A0

loc_140312DD8:                          ; DATA XREF: .rdata:00000001400778CC↑o
                                        ; .rdata:00000001400778DC↑o ...
                mov     [rsp+28h+arg_8], rsi
                prefetchw byte ptr [rbx]
                mov     rax, [rbx]
                xor     esi, esi
                test    rax, rax
                jnz     short loc_140312E3C
                mov     rcx, [rbx+8]
                mov     rax, rbx
                lock cmpxchg [rcx], rsi
                jnz     short loc_140312E34

loc_140312DF8:                          ; CODE XREF: IoReleaseCancelSpinLock+95↓j
                mov     rsi, [rsp+28h+arg_8]

loc_140312DFD:                          ; CODE XREF: IoReleaseCancelSpinLock+15B2FE↓j
                                        ; DATA XREF: .pdata:00000001400D4AFC↑o ...
                mov     rcx, gs:20h
                mov     rbx, [rsp+28h+arg_0]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046E0B3

loc_140312E1B:                          ; CODE XREF: IoReleaseCancelSpinLock+15B307↓j
                                        ; IoReleaseCancelSpinLock+15B316↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046E0D7

loc_140312E29:                          ; CODE XREF: IoReleaseCancelSpinLock+15B329↓j
                                        ; IoReleaseCancelSpinLock+15B335↓j ...
                mov     cr8, rdi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140312E34:                          ; CODE XREF: IoReleaseCancelSpinLock+46↑j
                                        ; DATA XREF: .pdata:00000001400D4B14↑o ...
                mov     rcx, rbx
                call    sub_140313680

loc_140312E3C:                          ; CODE XREF: IoReleaseCancelSpinLock+38↑j
                mov     [rbx], rsi
                lock xor qword ptr [rax+8], 1
                jmp     short loc_140312DF8
IoReleaseCancelSpinLock endp
