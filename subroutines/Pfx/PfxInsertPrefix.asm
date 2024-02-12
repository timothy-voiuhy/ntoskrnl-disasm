PfxInsertPrefix proc near               ; DATA XREF: .pdata:0000000140121ED8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                mov     rbx, r8
                mov     rcx, rdx
                mov     r15, rdx
                call    sub_140913434
                lea     r14, [rbx+10h]
                mov     [rbx+2], ax
                and     qword ptr [r14+8], 0
                and     qword ptr [r14+10h], 0
                mov     [rbx+28h], r15
                mov     [r14], r14
                mov     rdi, [rbp+8]
                jmp     short loc_14091360F
; ---------------------------------------------------------------------------

loc_140913608:                          ; CODE XREF: PfxInsertPrefix+53↓j
                mov     rbp, rdi
                mov     rdi, [rdi+8]

loc_14091360F:                          ; CODE XREF: PfxInsertPrefix+46↑j
                cmp     [rdi+2], ax
                jg      short loc_140913608
                jz      short loc_14091362E
                mov     [rbp+8], rbx
                mov     ecx, 201h
                mov     [rbx], cx
                mov     [rbx+8], rdi

loc_140913627:                          ; CODE XREF: PfxInsertPrefix+F3↓j
                mov     al, 1
                jmp     loc_1409136BA
; ---------------------------------------------------------------------------

loc_14091362E:                          ; CODE XREF: PfxInsertPrefix+55↑j
                mov     rsi, rdi

loc_140913631:                          ; CODE XREF: PfxInsertPrefix+B4↓j
                mov     rcx, [rsi+28h]
                mov     rdx, r15
                call    sub_1409132B4
                cmp     eax, 2
                jz      short loc_1409136B8
                cmp     eax, 3
                jnz     short loc_140913667
                mov     rax, [rsi+18h]
                test    rax, rax
                jnz     short loc_140913670
                and     qword ptr [rbx+8], 0
                lea     rcx, [rsi+10h]
                mov     eax, 202h
                mov     [rbx], ax
                mov     [rcx+8], r14
                jmp     short loc_14091368B
; ---------------------------------------------------------------------------

loc_140913667:                          ; CODE XREF: PfxInsertPrefix+85↑j
                mov     rax, [rsi+20h]
                test    rax, rax
                jz      short loc_140913676

loc_140913670:                          ; CODE XREF: PfxInsertPrefix+8E↑j
                lea     rsi, [rax-10h]
                jmp     short loc_140913631
; ---------------------------------------------------------------------------

loc_140913676:                          ; CODE XREF: PfxInsertPrefix+AE↑j
                and     qword ptr [rbx+8], 0
                lea     rcx, [rsi+10h]
                mov     eax, 202h
                mov     [rbx], ax
                mov     [rcx+10h], r14

loc_14091368B:                          ; CODE XREF: PfxInsertPrefix+A5↑j
                mov     [r14], rcx
                mov     rbx, [rdi+8]
                and     qword ptr [rdi+8], 0
                mov     [rdi], ax
                call    RtlSplay
                sub     rax, 10h
                mov     ecx, 201h
                mov     [rax], cx
                mov     [rbp+8], rax
                mov     [rax+8], rbx
                jmp     loc_140913627
; ---------------------------------------------------------------------------

loc_1409136B8:                          ; CODE XREF: PfxInsertPrefix+80↑j
                xor     al, al

loc_1409136BA:                          ; CODE XREF: PfxInsertPrefix+69↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PfxInsertPrefix endp
