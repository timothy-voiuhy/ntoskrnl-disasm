PfxRemovePrefix proc near               ; DATA XREF: .pdata:0000000140121EE4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   eax, word ptr [rdx]
                mov     ebp, 201h
                cmp     ax, bp
                jl      loc_140913791
                lea     esi, [rbp+1]
                cmp     ax, si
                jg      loc_140913791
                lea     rcx, [rdx+10h]
                mov     rdx, [rcx]
                mov     rbx, rcx
                cmp     rdx, rcx
                jz      short loc_14091372E

loc_140913720:                          ; CODE XREF: PfxRemovePrefix+4C↓j
                mov     rax, [rdx]
                mov     rbx, rdx
                mov     rdx, rax
                cmp     rax, rbx
                jnz     short loc_140913720

loc_14091372E:                          ; CODE XREF: PfxRemovePrefix+3E↑j
                lea     rdi, [rbx-10h]
                call    RtlDelete
                test    rax, rax
                jnz     short loc_14091375B
                mov     rdx, [rbx-8]
                mov     rax, rdx
                mov     rcx, [rdx+8]
                jmp     short loc_140913750
; ---------------------------------------------------------------------------

loc_140913749:                          ; CODE XREF: PfxRemovePrefix+73↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_140913750:                          ; CODE XREF: PfxRemovePrefix+67↑j
                cmp     rcx, rdi
                jnz     short loc_140913749
                mov     [rax+8], rdx
                jmp     short loc_140913791
; ---------------------------------------------------------------------------

loc_14091375B:                          ; CODE XREF: PfxRemovePrefix+5A↑j
                cmp     rbx, rax
                jz      short loc_140913791
                lea     rdx, [rax-10h]
                mov     rax, [rbx-8]
                mov     rcx, [rax+8]
                jmp     short loc_140913775
; ---------------------------------------------------------------------------

loc_14091376E:                          ; CODE XREF: PfxRemovePrefix+98↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_140913775:                          ; CODE XREF: PfxRemovePrefix+8C↑j
                cmp     rcx, rdi
                jnz     short loc_14091376E
                mov     [rdx], bp
                mov     [rax+8], rdx
                mov     rax, [rbx-8]
                mov     [rdx+8], rax
                and     qword ptr [rbx-8], 0
                mov     [rdi], si

loc_140913791:                          ; CODE XREF: PfxRemovePrefix+1F↑j
                                        ; PfxRemovePrefix+2B↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PfxRemovePrefix endp
