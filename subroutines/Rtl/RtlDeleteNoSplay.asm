RtlDeleteNoSplay proc near              ; CODE XREF: sub_1403265D4+32↑p
                                        ; sub_140326E30+14CD0E↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     qword ptr [rcx+8], 0
                mov     rdi, rdx
                mov     rbx, rcx
                jnz     loc_1403267B4

loc_14032672B:                          ; CODE XREF: RtlDeleteNoSplay+A9↓j
                                        ; RtlDeleteNoSplay+C4↓j
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jnz     short loc_140326754
                mov     rcx, [rbx+10h]
                test    rcx, rcx
                jnz     short loc_140326754
                mov     rax, [rbx]
                cmp     rax, rbx
                jnz     short loc_14032676E
                mov     [rdi], rcx

loc_140326748:                          ; CODE XREF: RtlDeleteNoSplay+A2↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140326754:                          ; CODE XREF: RtlDeleteNoSplay+22↑j
                                        ; RtlDeleteNoSplay+2B↑j
                mov     rax, [rbx]
                cmp     rax, rbx
                jnz     short loc_140326795
                mov     [rcx], rcx
                mov     [rdi], rcx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032676E:                          ; CODE XREF: RtlDeleteNoSplay+33↑j
                cmp     [rax+8], rbx
                mov     edx, 8
                mov     rbx, [rsp+28h+arg_0]
                mov     r8d, 10h
                cmovnz  edx, r8d
                mov     qword ptr [rdx+rax], 0
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140326795:                          ; CODE XREF: RtlDeleteNoSplay+4A↑j
                cmp     [rax+8], rbx
                mov     edx, 8
                mov     r8d, 10h
                cmovnz  edx, r8d
                mov     [rdx+rax], rcx
                mov     rax, [rbx]
                mov     [rcx], rax
                jmp     short loc_140326748
; ---------------------------------------------------------------------------

loc_1403267B4:                          ; CODE XREF: RtlDeleteNoSplay+15↑j
                cmp     qword ptr [rcx+10h], 0
                jz      loc_14032672B
                call    RtlSubtreePredecessor
                cmp     [rbx], rbx
                jz      short loc_1403267D9

loc_1403267C9:                          ; CODE XREF: RtlDeleteNoSplay+CC↓j
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_140327B64
                jmp     loc_14032672B
; ---------------------------------------------------------------------------

loc_1403267D9:                          ; CODE XREF: RtlDeleteNoSplay+B7↑j
                mov     [rdi], rax
                jmp     short loc_1403267C9
RtlDeleteNoSplay endp
