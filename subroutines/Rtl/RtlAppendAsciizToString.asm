RtlAppendAsciizToString proc near       ; DATA XREF: .pdata:0000000140121E18↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_140911EEB
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_140911EB6:                          ; CODE XREF: RtlAppendAsciizToString+1D↓j
                inc     rbx
                cmp     byte ptr [rdx+rbx], 0
                jnz     short loc_140911EB6
                cmp     rbx, 0FFFFh
                ja      short loc_140911EF9
                movzx   r8d, word ptr [rcx]
                movzx   eax, word ptr [rdi+2]
                lea     rcx, [r8+rbx]
                cmp     rcx, rax
                ja      short loc_140911EF9
                mov     rcx, [rdi+8]
                add     rcx, r8
                mov     r8, rbx
                call    memmove
                add     [rdi], bx

loc_140911EEB:                          ; CODE XREF: RtlAppendAsciizToString+10↑j
                xor     eax, eax

loc_140911EED:                          ; CODE XREF: RtlAppendAsciizToString+5E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140911EF9:                          ; CODE XREF: RtlAppendAsciizToString+26↑j
                                        ; RtlAppendAsciizToString+37↑j
                mov     eax, 0C0000023h
                jmp     short loc_140911EED
RtlAppendAsciizToString endp
